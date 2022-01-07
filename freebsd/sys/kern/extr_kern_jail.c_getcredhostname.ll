; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_jail.c_getcredhostname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_jail.c_getcredhostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prison = type { i32, i32 }
%struct.ucred = type { %struct.prison* }

@prison0 = common dso_local global %struct.prison zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getcredhostname(%struct.ucred* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.prison*, align 8
  store %struct.ucred* %0, %struct.ucred** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.ucred*, %struct.ucred** %4, align 8
  %9 = icmp ne %struct.ucred* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load %struct.ucred*, %struct.ucred** %4, align 8
  %12 = getelementptr inbounds %struct.ucred, %struct.ucred* %11, i32 0, i32 0
  %13 = load %struct.prison*, %struct.prison** %12, align 8
  br label %15

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi %struct.prison* [ %13, %10 ], [ @prison0, %14 ]
  store %struct.prison* %16, %struct.prison** %7, align 8
  %17 = load %struct.prison*, %struct.prison** %7, align 8
  %18 = getelementptr inbounds %struct.prison, %struct.prison* %17, i32 0, i32 0
  %19 = call i32 @mtx_lock(i32* %18)
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.prison*, %struct.prison** %7, align 8
  %22 = getelementptr inbounds %struct.prison, %struct.prison* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @strlcpy(i8* %20, i32 %23, i64 %24)
  %26 = load %struct.prison*, %struct.prison** %7, align 8
  %27 = getelementptr inbounds %struct.prison, %struct.prison* %26, i32 0, i32 0
  %28 = call i32 @mtx_unlock(i32* %27)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @strlcpy(i8*, i32, i64) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
