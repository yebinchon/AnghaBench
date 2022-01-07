; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_ipsec_pcb.c_ipsec_control_pcbpolicy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_ipsec_pcb.c_ipsec_control_pcbpolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32* }
%struct.sockopt = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@ENOPROTOOPT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@SOPT_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inpcb*, %struct.sockopt*)* @ipsec_control_pcbpolicy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipsec_control_pcbpolicy(%struct.inpcb* %0, %struct.sockopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.sockopt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store %struct.sockopt* %1, %struct.sockopt** %5, align 8
  %9 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %10 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %14, i32* %3, align 4
  br label %95

15:                                               ; preds = %2
  %16 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %17 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ult i64 %19, 4
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @PAGE_SIZE, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %15
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %95

27:                                               ; preds = %21
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* @M_TEMP, align 4
  %30 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %31 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @M_WAITOK, align 4
  br label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @M_NOWAIT, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = call i8* @malloc(i64 %28, i32 %29, i32 %39)
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOBUFS, align 4
  store i32 %44, i32* %3, align 4
  br label %95

45:                                               ; preds = %38
  %46 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @sooptcopyin(%struct.sockopt* %46, i8* %47, i64 %48, i64 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %90

53:                                               ; preds = %45
  %54 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %55 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SOPT_SET, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %53
  %60 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %61 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %62 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = icmp ne %struct.TYPE_2__* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %67 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  br label %72

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %71, %65
  %73 = phi i32* [ %70, %65 ], [ null, %71 ]
  %74 = load i8*, i8** %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @ipsec_set_pcbpolicy(%struct.inpcb* %60, i32* %73, i8* %74, i64 %75)
  store i32 %76, i32* %8, align 4
  br label %89

77:                                               ; preds = %53
  %78 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @ipsec_get_pcbpolicy(%struct.inpcb* %78, i8* %79, i64* %7)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @sooptcopyout(%struct.sockopt* %84, i8* %85, i64 %86)
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %83, %77
  br label %89

89:                                               ; preds = %88, %72
  br label %90

90:                                               ; preds = %89, %45
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* @M_TEMP, align 4
  %93 = call i32 @free(i8* %91, i32 %92)
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %90, %43, %25, %13
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @sooptcopyin(%struct.sockopt*, i8*, i64, i64) #1

declare dso_local i32 @ipsec_set_pcbpolicy(%struct.inpcb*, i32*, i8*, i64) #1

declare dso_local i32 @ipsec_get_pcbpolicy(%struct.inpcb*, i8*, i64*) #1

declare dso_local i32 @sooptcopyout(%struct.sockopt*, i8*, i64) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
