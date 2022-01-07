; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_buf_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_buf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32, i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@B_REMFREE = common dso_local global i32 0, align 4
@BV_BKGRDINPROG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"losing buffer 1\00", align 1
@NOCRED = common dso_local global i64 0, align 8
@buf_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*)* @buf_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buf_free(%struct.buf* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  store %struct.buf* %0, %struct.buf** %2, align 8
  %3 = load %struct.buf*, %struct.buf** %2, align 8
  %4 = getelementptr inbounds %struct.buf, %struct.buf* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @B_REMFREE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.buf*, %struct.buf** %2, align 8
  %11 = call i32 @bremfreef(%struct.buf* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.buf*, %struct.buf** %2, align 8
  %14 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BV_BKGRDINPROG, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %12
  %22 = load %struct.buf*, %struct.buf** %2, align 8
  %23 = getelementptr inbounds %struct.buf, %struct.buf* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NOCRED, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.buf*, %struct.buf** %2, align 8
  %29 = getelementptr inbounds %struct.buf, %struct.buf* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @crfree(i64 %30)
  %32 = load i64, i64* @NOCRED, align 8
  %33 = load %struct.buf*, %struct.buf** %2, align 8
  %34 = getelementptr inbounds %struct.buf, %struct.buf* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %27, %21
  %36 = load %struct.buf*, %struct.buf** %2, align 8
  %37 = getelementptr inbounds %struct.buf, %struct.buf* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NOCRED, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load %struct.buf*, %struct.buf** %2, align 8
  %43 = getelementptr inbounds %struct.buf, %struct.buf* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @crfree(i64 %44)
  %46 = load i64, i64* @NOCRED, align 8
  %47 = load %struct.buf*, %struct.buf** %2, align 8
  %48 = getelementptr inbounds %struct.buf, %struct.buf* %47, i32 0, i32 3
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %41, %35
  %50 = load %struct.buf*, %struct.buf** %2, align 8
  %51 = getelementptr inbounds %struct.buf, %struct.buf* %50, i32 0, i32 4
  %52 = call i32 @LIST_EMPTY(i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load %struct.buf*, %struct.buf** %2, align 8
  %56 = call i32 @buf_deallocate(%struct.buf* %55)
  br label %57

57:                                               ; preds = %54, %49
  %58 = load %struct.buf*, %struct.buf** %2, align 8
  %59 = call i32 @bufkva_free(%struct.buf* %58)
  %60 = load %struct.buf*, %struct.buf** %2, align 8
  %61 = call %struct.TYPE_2__* @bufdomain(%struct.buf* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @atomic_add_int(i32* %62, i32 1)
  %64 = load %struct.buf*, %struct.buf** %2, align 8
  %65 = call i32 @BUF_UNLOCK(%struct.buf* %64)
  %66 = load i32, i32* @buf_zone, align 4
  %67 = load %struct.buf*, %struct.buf** %2, align 8
  %68 = call i32 @uma_zfree(i32 %66, %struct.buf* %67)
  ret void
}

declare dso_local i32 @bremfreef(%struct.buf*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @crfree(i64) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @buf_deallocate(%struct.buf*) #1

declare dso_local i32 @bufkva_free(%struct.buf*) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @bufdomain(%struct.buf*) #1

declare dso_local i32 @BUF_UNLOCK(%struct.buf*) #1

declare dso_local i32 @uma_zfree(i32, %struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
