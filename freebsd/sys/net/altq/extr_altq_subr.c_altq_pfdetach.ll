; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/altq/extr_altq_subr.c_altq_pfdetach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/altq/extr_altq_subr.c_altq_pfdetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_altq = type { i64, i32 }
%struct.ifnet = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @altq_pfdetach(%struct.pf_altq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pf_altq*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pf_altq* %0, %struct.pf_altq** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.pf_altq*, %struct.pf_altq** %3, align 8
  %8 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.ifnet* @ifunit(i32 %9)
  store %struct.ifnet* %10, %struct.ifnet** %4, align 8
  %11 = icmp eq %struct.ifnet* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %2, align 4
  br label %51

14:                                               ; preds = %1
  %15 = load %struct.pf_altq*, %struct.pf_altq** %3, align 8
  %16 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = icmp eq i8* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %14
  %21 = load %struct.pf_altq*, %struct.pf_altq** %3, align 8
  %22 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %23, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20, %14
  store i32 0, i32* %2, align 4
  br label %51

30:                                               ; preds = %20
  %31 = call i32 (...) @splnet()
  store i32 %31, i32* %5, align 4
  %32 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 0
  %34 = call i64 @ALTQ_IS_ENABLED(%struct.TYPE_4__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %38 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %37, i32 0, i32 0
  %39 = call i32 @altq_disable(%struct.TYPE_4__* %38)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %36, %30
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %45 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %44, i32 0, i32 0
  %46 = call i32 @altq_detach(%struct.TYPE_4__* %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @splx(i32 %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %29, %12
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.ifnet* @ifunit(i32) #1

declare dso_local i32 @splnet(...) #1

declare dso_local i64 @ALTQ_IS_ENABLED(%struct.TYPE_4__*) #1

declare dso_local i32 @altq_disable(%struct.TYPE_4__*) #1

declare dso_local i32 @altq_detach(%struct.TYPE_4__*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
