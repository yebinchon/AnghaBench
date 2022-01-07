; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_ip_dn_ctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_ip_dn_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockopt = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PRIV_NETINET_DUMMYNET = common dso_local global i32 0, align 4
@SOPT_SET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"dummynet: unknown option %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"dummynet: compat option %d\00", align 1
@SOPT_GET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"argument len %d invalid\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockopt*)* @ip_dn_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_dn_ctl(%struct.sockopt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockopt*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sockopt* %0, %struct.sockopt** %3, align 8
  store i8* null, i8** %4, align 8
  %7 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %8 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i32, i32* @PRIV_NETINET_DUMMYNET, align 4
  %11 = call i32 @priv_check(%struct.TYPE_2__* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %99

16:                                               ; preds = %1
  %17 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %18 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SOPT_SET, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %24 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @securelevel_ge(i32 %27, i32 3)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %99

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %16
  %35 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %36 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %38 [
    i32 129, label %44
    i32 131, label %44
    i32 130, label %44
    i32 128, label %44
    i32 132, label %51
  ]

38:                                               ; preds = %34
  %39 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %40 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @D(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %5, align 4
  br label %90

44:                                               ; preds = %34, %34, %34, %34
  %45 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %46 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @D(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %50 = call i32 @ip_dummynet_compat(%struct.sockopt* %49)
  store i32 %50, i32* %5, align 4
  br label %90

51:                                               ; preds = %34
  %52 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %53 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SOPT_GET, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %59 = call i32 @dummynet_get(%struct.sockopt* %58, i32* null)
  store i32 %59, i32* %5, align 4
  br label %90

60:                                               ; preds = %51
  %61 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %62 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp ult i64 %65, 4
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %6, align 4
  %69 = icmp sgt i32 %68, 12000
  br i1 %69, label %70, label %73

70:                                               ; preds = %67, %60
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @D(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  br label %90

73:                                               ; preds = %67
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @M_TEMP, align 4
  %76 = load i32, i32* @M_WAITOK, align 4
  %77 = call i8* @malloc(i32 %74, i32 %75, i32 %76)
  store i8* %77, i8** %4, align 8
  %78 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @sooptcopyin(%struct.sockopt* %78, i8* %79, i32 %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  br label %90

86:                                               ; preds = %73
  %87 = load i8*, i8** %4, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @do_config(i8* %87, i32 %88)
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %86, %85, %70, %57, %44, %38
  %91 = load i8*, i8** %4, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i8*, i8** %4, align 8
  %95 = load i32, i32* @M_TEMP, align 4
  %96 = call i32 @free(i8* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %90
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %31, %14
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @priv_check(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @securelevel_ge(i32, i32) #1

declare dso_local i32 @D(i8*, i32) #1

declare dso_local i32 @ip_dummynet_compat(%struct.sockopt*) #1

declare dso_local i32 @dummynet_get(%struct.sockopt*, i32*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @sooptcopyin(%struct.sockopt*, i8*, i32, i32) #1

declare dso_local i32 @do_config(i8*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
