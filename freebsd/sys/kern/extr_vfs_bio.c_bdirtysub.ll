; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bdirtysub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bdirtysub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.bufdomain = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*)* @bdirtysub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdirtysub(%struct.buf* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  %3 = alloca %struct.bufdomain*, align 8
  %4 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %2, align 8
  %5 = load %struct.buf*, %struct.buf** %2, align 8
  %6 = call %struct.bufdomain* @bufdomain(%struct.buf* %5)
  store %struct.bufdomain* %6, %struct.bufdomain** %3, align 8
  %7 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %8 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %7, i32 0, i32 2
  %9 = call i32 @atomic_fetchadd_int(i32* %8, i32 -1)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %12 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %15 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %13, %16
  %18 = sdiv i32 %17, 2
  %19 = icmp eq i32 %10, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 (...) @bdirtywakeup()
  br label %22

22:                                               ; preds = %20, %1
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %25 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %31 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28, %22
  %35 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %36 = call i32 @bd_clear(%struct.bufdomain* %35)
  br label %37

37:                                               ; preds = %34, %28
  ret void
}

declare dso_local %struct.bufdomain* @bufdomain(%struct.buf*) #1

declare dso_local i32 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @bdirtywakeup(...) #1

declare dso_local i32 @bd_clear(%struct.bufdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
