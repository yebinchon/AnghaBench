; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc.c_cc_modevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc.c_cc_modevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_algo = type { i32 (...)*, i32 (...)* }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cc_modevent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cc_algo*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.cc_algo*
  store %struct.cc_algo* %10, %struct.cc_algo** %7, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %50 [
    i32 131, label %12
    i32 130, label %29
    i32 129, label %29
    i32 128, label %29
  ]

12:                                               ; preds = %3
  %13 = load %struct.cc_algo*, %struct.cc_algo** %7, align 8
  %14 = getelementptr inbounds %struct.cc_algo, %struct.cc_algo* %13, i32 0, i32 0
  %15 = load i32 (...)*, i32 (...)** %14, align 8
  %16 = icmp ne i32 (...)* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.cc_algo*, %struct.cc_algo** %7, align 8
  %19 = getelementptr inbounds %struct.cc_algo, %struct.cc_algo* %18, i32 0, i32 0
  %20 = load i32 (...)*, i32 (...)** %19, align 8
  %21 = call i32 (...) %20()
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load %struct.cc_algo*, %struct.cc_algo** %7, align 8
  %27 = call i32 @cc_register_algo(%struct.cc_algo* %26)
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %25, %22
  br label %52

29:                                               ; preds = %3, %3, %3
  %30 = load %struct.cc_algo*, %struct.cc_algo** %7, align 8
  %31 = call i32 @cc_deregister_algo(%struct.cc_algo* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = load %struct.cc_algo*, %struct.cc_algo** %7, align 8
  %36 = getelementptr inbounds %struct.cc_algo, %struct.cc_algo* %35, i32 0, i32 1
  %37 = load i32 (...)*, i32 (...)** %36, align 8
  %38 = icmp ne i32 (...)* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.cc_algo*, %struct.cc_algo** %7, align 8
  %41 = getelementptr inbounds %struct.cc_algo, %struct.cc_algo* %40, i32 0, i32 1
  %42 = load i32 (...)*, i32 (...)** %41, align 8
  %43 = call i32 (...) %42()
  br label %44

44:                                               ; preds = %39, %34, %29
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @ENOENT, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %48, %44
  br label %52

50:                                               ; preds = %3
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %50, %49, %28
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local i32 @cc_register_algo(%struct.cc_algo*) #1

declare dso_local i32 @cc_deregister_algo(%struct.cc_algo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
