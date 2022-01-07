; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_platform_powernv.c_powernv_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_platform_powernv.c_powernv_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPAL_REINIT_CPUS = common dso_local global i32 0, align 4
@cpu_idle_hook = common dso_local global i32* null, align 8
@powernv_cpu_idle = common dso_local global i32* null, align 8
@SPR_PIR = common dso_local global i32 0, align 4
@powernv_boot_pir = common dso_local global i32 0, align 4
@PSL_DR = common dso_local global i32 0, align 4
@PSL_IR = common dso_local global i32 0, align 4
@SPR_LPID = common dso_local global i32 0, align 4
@cpu_features2 = common dso_local global i32 0, align 4
@PPC_FEATURE2_ARCH_3_00 = common dso_local global i32 0, align 4
@LPCR_HVICE = common dso_local global i32 0, align 4
@lpcr = common dso_local global i32 0, align 4
@SPR_LPCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cpus\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"ibm,slb-size\00", align 1
@n_slbs = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"ibm,segment-page-sizes\00", align 1
@SLBV_L = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [77 x i8] c"Standard large pages (SLB[L] = 1, PTE[LP] = 0) not supported by this system.\00", align 1
@moea64_large_page_shift = common dso_local global i8* null, align 8
@moea64_large_page_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @powernv_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powernv_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [255 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %17 = call i32 (...) @opal_check()
  %18 = load i32, i32* @OPAL_REINIT_CPUS, align 4
  %19 = call i32 @opal_call(i32 %18, i32 2)
  %20 = load i32*, i32** @cpu_idle_hook, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32*, i32** @powernv_cpu_idle, align 8
  store i32* %23, i32** @cpu_idle_hook, align 8
  br label %24

24:                                               ; preds = %22, %1
  %25 = load i32, i32* @SPR_PIR, align 4
  %26 = call i32 @mfspr(i32 %25)
  store i32 %26, i32* @powernv_boot_pir, align 4
  %27 = call i32 (...) @mfmsr()
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @PSL_DR, align 4
  %30 = load i32, i32* @PSL_IR, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = and i32 %28, %32
  %34 = call i32 @mtmsr(i32 %33)
  %35 = load i32, i32* @SPR_LPID, align 4
  %36 = call i32 @mtspr(i32 %35, i32 0)
  %37 = call i32 (...) @isync()
  %38 = load i32, i32* @cpu_features2, align 4
  %39 = load i32, i32* @PPC_FEATURE2_ARCH_3_00, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %24
  %43 = load i32, i32* @LPCR_HVICE, align 4
  %44 = load i32, i32* @lpcr, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* @lpcr, align 4
  br label %46

46:                                               ; preds = %42, %24
  %47 = load i32, i32* @SPR_LPCR, align 4
  %48 = load i32, i32* @lpcr, align 4
  %49 = call i32 @mtspr(i32 %47, i32 %48)
  %50 = call i32 (...) @isync()
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @mtmsr(i32 %51)
  %53 = call i32 (...) @powernv_cpuref_init()
  %54 = call i64 @OF_peer(i64 0)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i64 @OF_child(i64 %55)
  store i64 %56, i64* %10, align 8
  br label %57

57:                                               ; preds = %71, %46
  %58 = load i64, i64* %10, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 0
  %63 = call i32 @OF_getprop(i64 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %62, i32 255)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 0
  %68 = call i64 @strcmp(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %74

71:                                               ; preds = %66, %60
  %72 = load i64, i64* %10, align 8
  %73 = call i64 @OF_peer(i64 %72)
  store i64 %73, i64* %10, align 8
  br label %57

74:                                               ; preds = %70, %57
  %75 = load i64, i64* %10, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %205

78:                                               ; preds = %74
  %79 = load i64, i64* %10, align 8
  %80 = call i64 @OF_child(i64 %79)
  store i64 %80, i64* %10, align 8
  br label %81

81:                                               ; preds = %95, %78
  %82 = load i64, i64* %10, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %81
  %85 = load i64, i64* %10, align 8
  %86 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 0
  %87 = call i32 @OF_getprop(i64 %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %86, i32 255)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 0
  %92 = call i64 @strcmp(i8* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %98

95:                                               ; preds = %90, %84
  %96 = load i64, i64* %10, align 8
  %97 = call i64 @OF_peer(i64 %96)
  store i64 %97, i64* %10, align 8
  br label %81

98:                                               ; preds = %94, %81
  %99 = load i64, i64* %10, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %205

102:                                              ; preds = %98
  %103 = load i64, i64* %10, align 8
  %104 = call i32 @OF_getencprop(i64 %103, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %9, i32 8)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i8*, i8** %9, align 8
  store i8* %108, i8** @n_slbs, align 8
  br label %109

109:                                              ; preds = %107, %102
  %110 = load i64, i64* %10, align 8
  %111 = call i32 @OF_getproplen(i64 %110, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %204

114:                                              ; preds = %109
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = udiv i64 %116, 4
  %118 = call i8* @llvm.stacksave()
  store i8* %118, i8** %15, align 8
  %119 = alloca i8*, i64 %117, align 16
  store i64 %117, i64* %16, align 8
  %120 = load i64, i64* %10, align 8
  %121 = mul nuw i64 8, %117
  %122 = trunc i64 %121 to i32
  %123 = call i32 @OF_getencprop(i64 %120, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8** %119, i32 %122)
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %12, align 4
  %125 = sdiv i32 %124, 4
  store i32 %125, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %126

126:                                              ; preds = %193, %114
  %127 = load i32, i32* %12, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %194

129:                                              ; preds = %126
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %119, i64 %131
  %133 = load i8*, i8** %132, align 8
  store i8* %133, i8** %4, align 8
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %119, i64 %136
  %138 = load i8*, i8** %137, align 8
  store i8* %138, i8** %5, align 8
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, 2
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %119, i64 %141
  %143 = load i8*, i8** %142, align 8
  store i8* %143, i8** %3, align 8
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 3
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %12, align 4
  %147 = sub nsw i32 %146, 3
  store i32 %147, i32* %12, align 4
  br label %148

148:                                              ; preds = %175, %129
  %149 = load i32, i32* %12, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i8*, i8** %3, align 8
  %153 = icmp ne i8* %152, null
  br label %154

154:                                              ; preds = %151, %148
  %155 = phi i1 [ false, %148 ], [ %153, %151 ]
  br i1 %155, label %156, label %182

156:                                              ; preds = %154
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %119, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = ptrtoint i8* %160 to i64
  store i64 %161, i64* %6, align 8
  %162 = load i32, i32* %13, align 4
  %163 = add nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %119, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = ptrtoint i8* %166 to i64
  store i64 %167, i64* %7, align 8
  %168 = load i8*, i8** %5, align 8
  %169 = load i8*, i8** @SLBV_L, align 8
  %170 = icmp eq i8* %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %156
  %172 = load i64, i64* %7, align 8
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  br label %182

175:                                              ; preds = %171, %156
  %176 = load i32, i32* %13, align 4
  %177 = add nsw i32 %176, 2
  store i32 %177, i32* %13, align 4
  %178 = load i32, i32* %12, align 4
  %179 = sub nsw i32 %178, 2
  store i32 %179, i32* %12, align 4
  %180 = load i8*, i8** %3, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 -1
  store i8* %181, i8** %3, align 8
  br label %148

182:                                              ; preds = %174, %154
  %183 = load i8*, i8** %3, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %193

185:                                              ; preds = %182
  %186 = load i8*, i8** %5, align 8
  %187 = load i8*, i8** @SLBV_L, align 8
  %188 = icmp eq i8* %186, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %185
  %190 = load i64, i64* %7, align 8
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  br label %194

193:                                              ; preds = %189, %185, %182
  br label %126

194:                                              ; preds = %192, %126
  %195 = load i32, i32* %12, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %194
  %198 = call i32 @panic(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.6, i64 0, i64 0))
  br label %199

199:                                              ; preds = %197, %194
  %200 = load i8*, i8** %4, align 8
  store i8* %200, i8** @moea64_large_page_shift, align 8
  %201 = load i64, i64* %6, align 8
  %202 = shl i64 1, %201
  store i64 %202, i64* @moea64_large_page_size, align 8
  %203 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %203)
  br label %204

204:                                              ; preds = %199, %109
  br label %205

205:                                              ; preds = %204, %101, %77
  ret i32 0
}

declare dso_local i32 @opal_check(...) #1

declare dso_local i32 @opal_call(i32, i32) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @mfmsr(...) #1

declare dso_local i32 @mtmsr(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @isync(...) #1

declare dso_local i32 @powernv_cpuref_init(...) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @OF_getprop(i64, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @OF_getencprop(i64, i8*, i8**, i32) #1

declare dso_local i32 @OF_getproplen(i64, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @panic(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
