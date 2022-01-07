; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_aim_machdep.c_flush_disable_caches.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_aim_machdep.c_flush_disable_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PSL_EE = common dso_local global i32 0, align 4
@PSL_DR = common dso_local global i32 0, align 4
@SPR_MSSCR0 = common dso_local global i32 0, align 4
@MSSCR0_L2PFE = common dso_local global i32 0, align 4
@SPR_LDSTCR = common dso_local global i32 0, align 4
@SPR_L2CR = common dso_local global i32 0, align 4
@L2CR_L2E = common dso_local global i32 0, align 4
@L2CR_L2IO_7450 = common dso_local global i32 0, align 4
@L2CR_L2DO_7450 = common dso_local global i32 0, align 4
@L2CR_L2HWF = common dso_local global i32 0, align 4
@L2CR_L2I = common dso_local global i32 0, align 4
@SPR_L3CR = common dso_local global i32 0, align 4
@L3CR_L3E = common dso_local global i32 0, align 4
@L3CR_L3IO = common dso_local global i32 0, align 4
@L3CR_L3DO = common dso_local global i32 0, align 4
@L3CR_L3HWF = common dso_local global i32 0, align 4
@L3CR_L3I = common dso_local global i32 0, align 4
@SPR_HID0 = common dso_local global i32 0, align 4
@HID0_DCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_disable_caches() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 (...) @mfmsr()
  store i32 %8, i32* %1, align 4
  %9 = call i32 (...) @powerpc_sync()
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @PSL_EE, align 4
  %12 = load i32, i32* @PSL_DR, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %10, %14
  %16 = call i32 @mtmsr(i32 %15)
  %17 = load i32, i32* @SPR_MSSCR0, align 4
  %18 = call i32 @mfspr(i32 %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* @MSSCR0_L2PFE, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %2, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* @SPR_MSSCR0, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @mtspr(i32 %23, i32 %24)
  %26 = call i32 (...) @powerpc_sync()
  %27 = call i32 (...) @isync()
  call void asm sideeffect "dssall; sync", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %28 = call i32 (...) @powerpc_sync()
  %29 = call i32 (...) @isync()
  call void asm sideeffect "dcbf 0,$0", "r,~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !3
  call void asm sideeffect "dcbf 0,$0", "r,~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !4
  call void asm sideeffect "dcbf 0,$0", "r,~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !5
  %30 = load i32, i32* @SPR_LDSTCR, align 4
  %31 = load i32, i32* @SPR_LDSTCR, align 4
  %32 = call i32 @mfspr(i32 %31)
  %33 = or i32 %32, 255
  %34 = call i32 @mtspr(i32 %30, i32 %33)
  %35 = call i32 (...) @powerpc_sync()
  %36 = call i32 (...) @isync()
  %37 = load i32, i32* @SPR_LDSTCR, align 4
  %38 = call i32 @mtspr(i32 %37, i32 0)
  store i32* null, i32** %4, align 8
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %48, %0
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 131072
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i32*, i32** %4, align 8
  %44 = load volatile i32, i32* %43, align 4
  store i32 %44, i32* %5, align 4
  %45 = load i32*, i32** %4, align 8
  call void asm sideeffect "dcbf 0,$0", "r,~{dirflag},~{fpsr},~{flags}"(i32* %45) #2, !srcloc !6
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 8
  store i32* %47, i32** %4, align 8
  br label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %39

51:                                               ; preds = %39
  store i32* inttoptr (i64 4293918720 to i32*), i32** %4, align 8
  store i32 254, i32* %7, align 4
  br label %52

52:                                               ; preds = %71, %51
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 255
  br i1 %54, label %55, label %76

55:                                               ; preds = %52
  %56 = load i32, i32* @SPR_LDSTCR, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @mtspr(i32 %56, i32 %57)
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %68, %55
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 128
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i32*, i32** %4, align 8
  %64 = load volatile i32, i32* %63, align 4
  store i32 %64, i32* %5, align 4
  %65 = load i32*, i32** %4, align 8
  call void asm sideeffect "dcbf 0,$0", "r,~{dirflag},~{fpsr},~{flags}"(i32* %65) #2, !srcloc !7
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 8
  store i32* %67, i32** %4, align 8
  br label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %59

71:                                               ; preds = %59
  %72 = load i32, i32* %7, align 4
  %73 = shl i32 %72, 1
  %74 = or i32 %73, 1
  %75 = and i32 %74, 255
  store i32 %75, i32* %7, align 4
  br label %52

76:                                               ; preds = %52
  %77 = load i32, i32* @SPR_LDSTCR, align 4
  %78 = call i32 @mtspr(i32 %77, i32 0)
  %79 = load i32, i32* @SPR_L2CR, align 4
  %80 = call i32 @mfspr(i32 %79)
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @L2CR_L2E, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %133

85:                                               ; preds = %76
  %86 = load i32, i32* @L2CR_L2IO_7450, align 4
  %87 = load i32, i32* @L2CR_L2DO_7450, align 4
  %88 = or i32 %86, %87
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %3, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %3, align 4
  %92 = load i32, i32* @SPR_L2CR, align 4
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @mtspr(i32 %92, i32 %93)
  %95 = call i32 (...) @powerpc_sync()
  %96 = load i32, i32* @SPR_L2CR, align 4
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @L2CR_L2HWF, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @mtspr(i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %107, %85
  %102 = load i32, i32* @SPR_L2CR, align 4
  %103 = call i32 @mfspr(i32 %102)
  %104 = load i32, i32* @L2CR_L2HWF, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %101

108:                                              ; preds = %101
  %109 = call i32 (...) @powerpc_sync()
  %110 = load i32, i32* @L2CR_L2E, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %3, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %3, align 4
  %114 = load i32, i32* @SPR_L2CR, align 4
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @mtspr(i32 %114, i32 %115)
  %117 = call i32 (...) @powerpc_sync()
  %118 = load i32, i32* @SPR_L2CR, align 4
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* @L2CR_L2I, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @mtspr(i32 %118, i32 %121)
  %123 = call i32 (...) @powerpc_sync()
  br label %124

124:                                              ; preds = %130, %108
  %125 = load i32, i32* @SPR_L2CR, align 4
  %126 = call i32 @mfspr(i32 %125)
  %127 = load i32, i32* @L2CR_L2I, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %124

131:                                              ; preds = %124
  %132 = call i32 (...) @powerpc_sync()
  br label %133

133:                                              ; preds = %131, %76
  %134 = load i32, i32* @SPR_L3CR, align 4
  %135 = call i32 @mfspr(i32 %134)
  store i32 %135, i32* %3, align 4
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* @L3CR_L3E, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %188

140:                                              ; preds = %133
  %141 = load i32, i32* @L3CR_L3IO, align 4
  %142 = load i32, i32* @L3CR_L3DO, align 4
  %143 = or i32 %141, %142
  %144 = xor i32 %143, -1
  %145 = load i32, i32* %3, align 4
  %146 = and i32 %145, %144
  store i32 %146, i32* %3, align 4
  %147 = load i32, i32* @SPR_L3CR, align 4
  %148 = load i32, i32* %3, align 4
  %149 = call i32 @mtspr(i32 %147, i32 %148)
  %150 = call i32 (...) @powerpc_sync()
  %151 = load i32, i32* @SPR_L3CR, align 4
  %152 = load i32, i32* %3, align 4
  %153 = load i32, i32* @L3CR_L3HWF, align 4
  %154 = or i32 %152, %153
  %155 = call i32 @mtspr(i32 %151, i32 %154)
  br label %156

156:                                              ; preds = %162, %140
  %157 = load i32, i32* @SPR_L3CR, align 4
  %158 = call i32 @mfspr(i32 %157)
  %159 = load i32, i32* @L3CR_L3HWF, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  br label %156

163:                                              ; preds = %156
  %164 = call i32 (...) @powerpc_sync()
  %165 = load i32, i32* @L3CR_L3E, align 4
  %166 = xor i32 %165, -1
  %167 = load i32, i32* %3, align 4
  %168 = and i32 %167, %166
  store i32 %168, i32* %3, align 4
  %169 = load i32, i32* @SPR_L3CR, align 4
  %170 = load i32, i32* %3, align 4
  %171 = call i32 @mtspr(i32 %169, i32 %170)
  %172 = call i32 (...) @powerpc_sync()
  %173 = load i32, i32* @SPR_L3CR, align 4
  %174 = load i32, i32* %3, align 4
  %175 = load i32, i32* @L3CR_L3I, align 4
  %176 = or i32 %174, %175
  %177 = call i32 @mtspr(i32 %173, i32 %176)
  %178 = call i32 (...) @powerpc_sync()
  br label %179

179:                                              ; preds = %185, %163
  %180 = load i32, i32* @SPR_L3CR, align 4
  %181 = call i32 @mfspr(i32 %180)
  %182 = load i32, i32* @L3CR_L3I, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  br label %179

186:                                              ; preds = %179
  %187 = call i32 (...) @powerpc_sync()
  br label %188

188:                                              ; preds = %186, %133
  %189 = load i32, i32* @SPR_HID0, align 4
  %190 = load i32, i32* @SPR_HID0, align 4
  %191 = call i32 @mfspr(i32 %190)
  %192 = load i32, i32* @HID0_DCE, align 4
  %193 = xor i32 %192, -1
  %194 = and i32 %191, %193
  %195 = call i32 @mtspr(i32 %189, i32 %194)
  %196 = call i32 (...) @powerpc_sync()
  %197 = call i32 (...) @isync()
  %198 = load i32, i32* %1, align 4
  %199 = call i32 @mtmsr(i32 %198)
  ret void
}

declare dso_local i32 @mfmsr(...) #1

declare dso_local i32 @powerpc_sync(...) #1

declare dso_local i32 @mtmsr(i32) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @isync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 986}
!3 = !{i32 1052}
!4 = !{i32 1098}
!5 = !{i32 1144}
!6 = !{i32 1388}
!7 = !{i32 1617}
