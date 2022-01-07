; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bd_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bd_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufdomain = type { %struct.bufqueue*, i64 }
%struct.bufqueue = type { i64, i32, i32 }
%struct.buf = type { i32 }

@b_freelist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufdomain*, %struct.bufqueue*)* @bd_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bd_flush(%struct.bufdomain* %0, %struct.bufqueue* %1) #0 {
  %3 = alloca %struct.bufdomain*, align 8
  %4 = alloca %struct.bufqueue*, align 8
  %5 = alloca %struct.buf*, align 8
  store %struct.bufdomain* %0, %struct.bufdomain** %3, align 8
  store %struct.bufqueue* %1, %struct.bufqueue** %4, align 8
  %6 = load %struct.bufqueue*, %struct.bufqueue** %4, align 8
  %7 = call i32 @BQ_ASSERT_LOCKED(%struct.bufqueue* %6)
  %8 = load %struct.bufqueue*, %struct.bufqueue** %4, align 8
  %9 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %10 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %9, i32 0, i32 0
  %11 = load %struct.bufqueue*, %struct.bufqueue** %10, align 8
  %12 = icmp ne %struct.bufqueue* %8, %11
  br i1 %12, label %13, label %53

13:                                               ; preds = %2
  %14 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %15 = call i32 @BD_LOCK(%struct.bufdomain* %14)
  br label %16

16:                                               ; preds = %21, %13
  %17 = load %struct.bufqueue*, %struct.bufqueue** %4, align 8
  %18 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %17, i32 0, i32 2
  %19 = call %struct.buf* @TAILQ_FIRST(i32* %18)
  store %struct.buf* %19, %struct.buf** %5, align 8
  %20 = icmp ne %struct.buf* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %16
  %22 = load %struct.bufqueue*, %struct.bufqueue** %4, align 8
  %23 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %22, i32 0, i32 2
  %24 = load %struct.buf*, %struct.buf** %5, align 8
  %25 = load i32, i32* @b_freelist, align 4
  %26 = call i32 @TAILQ_REMOVE(i32* %23, %struct.buf* %24, i32 %25)
  %27 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %28 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %27, i32 0, i32 0
  %29 = load %struct.bufqueue*, %struct.bufqueue** %28, align 8
  %30 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %29, i32 0, i32 2
  %31 = load %struct.buf*, %struct.buf** %5, align 8
  %32 = load i32, i32* @b_freelist, align 4
  %33 = call i32 @TAILQ_INSERT_TAIL(i32* %30, %struct.buf* %31, i32 %32)
  %34 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %35 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %34, i32 0, i32 0
  %36 = load %struct.bufqueue*, %struct.bufqueue** %35, align 8
  %37 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.buf*, %struct.buf** %5, align 8
  %40 = getelementptr inbounds %struct.buf, %struct.buf* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %16

41:                                               ; preds = %16
  %42 = load %struct.bufqueue*, %struct.bufqueue** %4, align 8
  %43 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %46 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %45, i32 0, i32 0
  %47 = load %struct.bufqueue*, %struct.bufqueue** %46, align 8
  %48 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, %44
  store i64 %50, i64* %48, align 8
  %51 = load %struct.bufqueue*, %struct.bufqueue** %4, align 8
  %52 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %41, %2
  %54 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %55 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %60 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %62 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %61, i32 0, i32 1
  %63 = call i32 @wakeup(i64* %62)
  br label %64

64:                                               ; preds = %58, %53
  %65 = load %struct.bufqueue*, %struct.bufqueue** %4, align 8
  %66 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %67 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %66, i32 0, i32 0
  %68 = load %struct.bufqueue*, %struct.bufqueue** %67, align 8
  %69 = icmp ne %struct.bufqueue* %65, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %72 = call i32 @BD_UNLOCK(%struct.bufdomain* %71)
  br label %73

73:                                               ; preds = %70, %64
  ret void
}

declare dso_local i32 @BQ_ASSERT_LOCKED(%struct.bufqueue*) #1

declare dso_local i32 @BD_LOCK(%struct.bufdomain*) #1

declare dso_local %struct.buf* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.buf*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.buf*, i32) #1

declare dso_local i32 @wakeup(i64*) #1

declare dso_local i32 @BD_UNLOCK(%struct.bufdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
