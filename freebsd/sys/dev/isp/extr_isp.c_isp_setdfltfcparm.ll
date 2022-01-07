; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_setdfltfcparm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_setdfltfcparm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32 }

@ICB_DFLT_ALLOC = common dso_local global i32 0, align 4
@ICB_DFLT_RDELAY = common dso_local global i32 0, align 4
@ICB_DFLT_RCOUNT = common dso_local global i32 0, align 4
@NIL_HANDLE = common dso_local global i8* null, align 8
@ICB2400_OPT1_FAIRNESS = common dso_local global i32 0, align 4
@ICB2400_OPT1_HARD_ADDRESS = common dso_local global i32 0, align 4
@ISP_CFG_FULL_DUPLEX = common dso_local global i32 0, align 4
@ICB2400_OPT1_FULL_DUPLEX = common dso_local global i32 0, align 4
@ICB2400_OPT1_BOTH_WWNS = common dso_local global i32 0, align 4
@ICB2400_OPT2_LOOP_2_PTP = common dso_local global i32 0, align 4
@ICB2400_OPT3_RATE_AUTO = common dso_local global i32 0, align 4
@ICBOPT_FAIRNESS = common dso_local global i32 0, align 4
@ICBOPT_PDBCHANGE_AE = common dso_local global i32 0, align 4
@ICBOPT_HARD_ADDRESS = common dso_local global i32 0, align 4
@ICBOPT_FULL_DUPLEX = common dso_local global i32 0, align 4
@ICBOPT_EXTENDED = common dso_local global i32 0, align 4
@ICBXOPT_LOOP_2_PTP = common dso_local global i32 0, align 4
@ICBZOPT_RATE_AUTO = common dso_local global i32 0, align 4
@ISP_CFG_NONVRAM = common dso_local global i32 0, align 4
@ISP_LOGCONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Chan %d 0x%08x%08x/0x%08x%08x Role %s\00", align 1
@isp_class3_roles = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32)* @isp_setdfltfcparm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_setdfltfcparm(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.TYPE_16__* @FCPARAM(%struct.TYPE_15__* %8, i32 %9)
  store %struct.TYPE_16__* %10, %struct.TYPE_16__** %5, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @DEFAULT_ROLE(%struct.TYPE_15__* %11, i32 %12)
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load i32, i32* @ICB_DFLT_ALLOC, align 4
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 13
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @ICB_DFLT_RDELAY, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 12
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @ICB_DFLT_RCOUNT, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 11
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @DEFAULT_LOOPID(%struct.TYPE_15__* %25, i32 %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 10
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @DEFAULT_NODEWWN(%struct.TYPE_15__* %30, i32 %31)
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @DEFAULT_PORTWWN(%struct.TYPE_15__* %35, i32 %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 5
  store i32 0, i32* %41, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 4
  store i32 0, i32* %43, align 4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 3
  store i32 0, i32* %45, align 8
  %46 = load i8*, i8** @NIL_HANDLE, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 7
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** @NIL_HANDLE, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %53 = call i64 @IS_24XX(%struct.TYPE_15__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %94

55:                                               ; preds = %2
  %56 = load i32, i32* @ICB2400_OPT1_FAIRNESS, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* @ICB2400_OPT1_HARD_ADDRESS, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ISP_CFG_FULL_DUPLEX, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %55
  %73 = load i32, i32* @ICB2400_OPT1_FULL_DUPLEX, align 4
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %72, %55
  %79 = load i32, i32* @ICB2400_OPT1_BOTH_WWNS, align 4
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load i32, i32* @ICB2400_OPT2_LOOP_2_PTP, align 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* @ICB2400_OPT3_RATE_AUTO, align 4
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %139

94:                                               ; preds = %2
  %95 = load i32, i32* @ICBOPT_FAIRNESS, align 4
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load i32, i32* @ICBOPT_PDBCHANGE_AE, align 4
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load i32, i32* @ICBOPT_HARD_ADDRESS, align 4
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @ISP_CFG_FULL_DUPLEX, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %94
  %117 = load i32, i32* @ICBOPT_FULL_DUPLEX, align 4
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %116, %94
  %123 = load i32, i32* @ICBOPT_EXTENDED, align 4
  %124 = xor i32 %123, -1
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 8
  %129 = load i32, i32* @ICBXOPT_LOOP_2_PTP, align 4
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4
  %134 = load i32, i32* @ICBZOPT_RATE_AUTO, align 4
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %122, %78
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @ISP_CFG_NONVRAM, align 4
  %144 = and i32 %142, %143
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %171

146:                                              ; preds = %139
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %147

147:                                              ; preds = %158, %146
  %148 = load i32, i32* %6, align 4
  %149 = icmp slt i32 %148, 2
  br i1 %149, label %150, label %161

150:                                              ; preds = %147
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %152 = load i32, i32* %4, align 4
  %153 = call i32 @isp_read_nvram(%struct.TYPE_15__* %151, i32 %152)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %161

157:                                              ; preds = %150
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %6, align 4
  br label %147

161:                                              ; preds = %156, %147
  %162 = load i32, i32* %7, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %161
  %165 = load i32, i32* @ISP_CFG_NONVRAM, align 4
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %164, %161
  br label %171

171:                                              ; preds = %170, %139
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %173 = load i32, i32* %4, align 4
  %174 = call i32 @ACTIVE_NODEWWN(%struct.TYPE_15__* %172, i32 %173)
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 8
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %178 = load i32, i32* %4, align 4
  %179 = call i32 @ACTIVE_PORTWWN(%struct.TYPE_15__* %177, i32 %178)
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 4
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %183 = load i32, i32* @ISP_LOGCONFIG, align 4
  %184 = load i32, i32* %4, align 4
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = ashr i32 %187, 32
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = ashr i32 %194, 32
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load i32*, i32** @isp_class3_roles, align 8
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds i32, i32* %199, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @isp_prt(%struct.TYPE_15__* %182, i32 %183, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %184, i32 %188, i32 %191, i32 %195, i32 %198, i32 %204)
  ret void
}

declare dso_local %struct.TYPE_16__* @FCPARAM(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @DEFAULT_ROLE(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @DEFAULT_LOOPID(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @DEFAULT_NODEWWN(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @DEFAULT_PORTWWN(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @IS_24XX(%struct.TYPE_15__*) #1

declare dso_local i32 @isp_read_nvram(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ACTIVE_NODEWWN(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ACTIVE_PORTWWN(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @isp_prt(%struct.TYPE_15__*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
