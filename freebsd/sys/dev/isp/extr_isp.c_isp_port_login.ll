; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_port_login.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_port_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32, i32 }

@MBOX_FABRIC_LOGIN = common dso_local global i32 0, align 4
@MBLOGNONE = common dso_local global i32 0, align 4
@ISP_LOG_SANCFG = common dso_local global i32 0, align 4
@ISP_LOG_WARN1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"isp_port_login: portid 0x%06x already logged in as 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"isp_port_login: handle 0x%x in use for port id 0x%02xXXXX\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"isp_port_login: error 0x%x in PLOGI to port 0x%06x\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"isp_port_login: all IDs used for fabric login\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"isp_port_login: error 0x%x on port login of 0x%06x@0x%0x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @isp_port_login to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_port_login(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @MBOX_FABRIC_LOGIN, align 4
  %10 = load i32, i32* @MBLOGNONE, align 4
  %11 = call i32 @MBSINIT(%struct.TYPE_4__* %8, i32 %9, i32 %10, i32 500000)
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @ISP_CAP_2KLOGIN(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 %16, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i32 1024, i32* %20, align 8
  br label %27

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 %22, 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %23, i32* %26, align 4
  br label %27

27:                                               ; preds = %21, %15
  %28 = load i32, i32* %7, align 4
  %29 = ashr i32 %28, 16
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @MBLOGNONE, align 4
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i32 500000, i32* %39, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @isp_mboxcmd(i32* %40, %struct.TYPE_4__* %8)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %93 [
    i32 128, label %46
    i32 129, label %63
    i32 131, label %75
    i32 130, label %76
    i32 132, label %87
  ]

46:                                               ; preds = %27
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %49 = load i32, i32* @ISP_LOG_WARN1, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %7, align 4
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %47, i32 %50, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 16
  %62 = or i32 128, %61
  store i32 %62, i32* %4, align 4
  br label %107

63:                                               ; preds = %27
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %66 = load i32, i32* @ISP_LOG_WARN1, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %6, align 4
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 255
  %74 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %64, i32 %67, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %73)
  store i32 129, i32* %4, align 4
  br label %107

75:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %107

76:                                               ; preds = %27
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %79 = load i32, i32* @ISP_LOG_WARN1, align 4
  %80 = or i32 %78, %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %77, i32 %80, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %85)
  store i32 130, i32* %4, align 4
  br label %107

87:                                               ; preds = %27
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %90 = load i32, i32* @ISP_LOG_WARN1, align 4
  %91 = or i32 %89, %90
  %92 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %88, i32 %91, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  store i32 132, i32* %4, align 4
  br label %107

93:                                               ; preds = %27
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %94, i32 %95, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %99, i32 %100, i32 %101)
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %93, %87, %76, %75, %63, %46
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @MBSINIT(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i64 @ISP_CAP_2KLOGIN(i32*) #1

declare dso_local i32 @isp_mboxcmd(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @isp_prt(i32*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
