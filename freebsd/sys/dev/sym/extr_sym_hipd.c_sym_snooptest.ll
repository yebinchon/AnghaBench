; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_snooptest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_snooptest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@nc_ctest4 = common dso_local global i32 0, align 4
@MPEE = common dso_local global i32 0, align 4
@snooptest = common dso_local global i32 0, align 4
@nc_temp = common dso_local global i32 0, align 4
@nc_dsa = common dso_local global i32 0, align 4
@SYM_SNOOP_TIMEOUT = common dso_local global i32 0, align 4
@nc_istat = common dso_local global i32 0, align 4
@INTF = common dso_local global i32 0, align 4
@SIP = common dso_local global i32 0, align 4
@DIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"CACHE TEST FAILED: timeout.\0A\00", align 1
@nc_dstat = common dso_local global i32 0, align 4
@MDPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"%s: PCI DATA PARITY ERROR DETECTED - DISABLING MASTER DATA PARITY CHECKING.\0A\00", align 1
@BF = common dso_local global i32 0, align 4
@IID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"CACHE TEST FAILED: DMA error (dstat=0x%02x).\00", align 1
@nc_dsp = common dso_local global i32 0, align 4
@nc_scratcha = common dso_local global i32 0, align 4
@snoopend = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"CACHE TEST FAILED: script execution failed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"start=%08lx, pc=%08lx, end=%08lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"CACHE TEST FAILED: host wrote %d, chip read %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"CACHE TEST FAILED: chip wrote %d, host read %d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"CACHE TEST FAILED: chip wrote %d, read back %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @sym_snooptest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_snooptest(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = call i32 @sym_regtest(%struct.TYPE_6__* %13)
  %15 = load i32, i32* %12, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %2, align 4
  br label %171

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %86, %21
  %23 = load i32, i32* @nc_ctest4, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MPEE, align 4
  %28 = and i32 %26, %27
  %29 = call i32 @OUTB(i32 %23, i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = load i32, i32* @snooptest, align 4
  %32 = call i32 @SCRIPTB0_BA(%struct.TYPE_6__* %30, i32 %31)
  store i32 %32, i32* %9, align 4
  store i32 1, i32* %8, align 4
  store i32 2, i32* %5, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @cpu_to_scr(i32 %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @nc_temp, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @OUTL(i32 %37, i32 %38)
  %40 = load i32, i32* @nc_dsa, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @OUTL(i32 %40, i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @OUTL_DSP(i32 %45)
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %63, %22
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @SYM_SNOOP_TIMEOUT, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load i32, i32* @nc_istat, align 4
  %53 = call i32 @INB(i32 %52)
  %54 = load i32, i32* @INTF, align 4
  %55 = load i32, i32* @SIP, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @DIP, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %53, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %66

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %47

66:                                               ; preds = %61, %47
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @SYM_SNOOP_TIMEOUT, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 32, i32* %2, align 4
  br label %171

72:                                               ; preds = %66
  %73 = load i32, i32* @nc_dstat, align 4
  %74 = call i32 @INB(i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @MDPE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %72
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @MPEE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %79
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %88 = call i8* @sym_name(%struct.TYPE_6__* %87)
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i8* %88)
  %90 = load i32, i32* @MPEE, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %22

96:                                               ; preds = %79, %72
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @MDPE, align 4
  %99 = load i32, i32* @BF, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @IID, align 4
  %102 = or i32 %100, %101
  %103 = and i32 %97, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %96
  %106 = load i32, i32* %10, align 4
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  store i32 128, i32* %2, align 4
  br label %171

108:                                              ; preds = %96
  %109 = load i32, i32* @nc_dsp, align 4
  %110 = call i32 @INL(i32 %109)
  store i32 %110, i32* %9, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @scr_to_cpu(i32 %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* @nc_scratcha, align 4
  %116 = call i32 @INL(i32 %115)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* @nc_temp, align 4
  %118 = call i32 @INL(i32 %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %121 = load i32, i32* @snoopend, align 4
  %122 = call i32 @SCRIPTB0_BA(%struct.TYPE_6__* %120, i32 %121)
  %123 = add nsw i32 %122, 8
  %124 = icmp ne i32 %119, %123
  br i1 %124, label %125, label %139

125:                                              ; preds = %108
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %128 = load i32, i32* @snooptest, align 4
  %129 = call i32 @SCRIPTB0_BA(%struct.TYPE_6__* %127, i32 %128)
  %130 = sext i32 %129 to i64
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %134 = load i32, i32* @snoopend, align 4
  %135 = call i32 @SCRIPTB0_BA(%struct.TYPE_6__* %133, i32 %134)
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, 8
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %130, i64 %132, i64 %137)
  store i32 64, i32* %2, align 4
  br label %171

139:                                              ; preds = %108
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %139
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %4, align 4
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %144, i32 %145)
  %147 = load i32, i32* %12, align 4
  %148 = or i32 %147, 1
  store i32 %148, i32* %12, align 4
  br label %149

149:                                              ; preds = %143, %139
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %5, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %149
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* %7, align 4
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %154, i32 %155)
  %157 = load i32, i32* %12, align 4
  %158 = or i32 %157, 2
  store i32 %158, i32* %12, align 4
  br label %159

159:                                              ; preds = %153, %149
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %5, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %159
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* %6, align 4
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %164, i32 %165)
  %167 = load i32, i32* %12, align 4
  %168 = or i32 %167, 4
  store i32 %168, i32* %12, align 4
  br label %169

169:                                              ; preds = %163, %159
  %170 = load i32, i32* %12, align 4
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %169, %125, %105, %70, %19
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @sym_regtest(%struct.TYPE_6__*) #1

declare dso_local i32 @OUTB(i32, i32) #1

declare dso_local i32 @SCRIPTB0_BA(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @cpu_to_scr(i32) #1

declare dso_local i32 @OUTL(i32, i32) #1

declare dso_local i32 @OUTL_DSP(i32) #1

declare dso_local i32 @INB(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @sym_name(%struct.TYPE_6__*) #1

declare dso_local i32 @INL(i32) #1

declare dso_local i32 @scr_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
