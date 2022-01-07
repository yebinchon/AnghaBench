; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_sysvec.c_linux_copyout_auxargs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_sysvec.c_linux_copyout_auxargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_params = type { i32, i32, i32*, %struct.proc* }
%struct.proc = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ps_strings = type { i32 }

@P_SUGID = common dso_local global i32 0, align 4
@linux_szplatform = common dso_local global i64 0, align 8
@LINUX_AT_COUNT = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@LINUX_AT_SYSINFO_EHDR = common dso_local global i32 0, align 4
@LINUX_AT_SYSINFO = common dso_local global i32 0, align 4
@linux_vsyscall = common dso_local global i32 0, align 4
@LINUX_AT_HWCAP = common dso_local global i32 0, align 4
@cpu_feature = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@LINUX_KERNVER_2004000 = common dso_local global i64 0, align 8
@LINUX_AT_CLKTCK = common dso_local global i32 0, align 4
@stclohz = common dso_local global i32 0, align 4
@AT_PHDR = common dso_local global i32 0, align 4
@AT_PHENT = common dso_local global i32 0, align 4
@AT_PHNUM = common dso_local global i32 0, align 4
@AT_PAGESZ = common dso_local global i32 0, align 4
@AT_FLAGS = common dso_local global i32 0, align 4
@AT_ENTRY = common dso_local global i32 0, align 4
@AT_BASE = common dso_local global i32 0, align 4
@LINUX_AT_SECURE = common dso_local global i32 0, align 4
@AT_UID = common dso_local global i32 0, align 4
@AT_EUID = common dso_local global i32 0, align 4
@AT_GID = common dso_local global i32 0, align 4
@AT_EGID = common dso_local global i32 0, align 4
@LINUX_AT_PLATFORM = common dso_local global i32 0, align 4
@LINUX_AT_RANDOM = common dso_local global i32 0, align 4
@LINUX_AT_EXECFN = common dso_local global i32 0, align 4
@AT_EXECFD = common dso_local global i32 0, align 4
@AT_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Too many auxargs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.image_params*, i32*)* @linux_copyout_auxargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linux_copyout_auxargs(%struct.image_params* %0, i32* %1) #0 {
  %3 = alloca %struct.image_params*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ps_strings*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.image_params* %0, %struct.image_params** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.image_params*, %struct.image_params** %3, align 8
  %14 = getelementptr inbounds %struct.image_params, %struct.image_params* %13, i32 0, i32 3
  %15 = load %struct.proc*, %struct.proc** %14, align 8
  store %struct.proc* %15, %struct.proc** %5, align 8
  %16 = load %struct.image_params*, %struct.image_params** %3, align 8
  %17 = getelementptr inbounds %struct.image_params, %struct.image_params* %16, i32 0, i32 3
  %18 = load %struct.proc*, %struct.proc** %17, align 8
  %19 = getelementptr inbounds %struct.proc, %struct.proc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @P_SUGID, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  store i32 %25, i32* %12, align 4
  %26 = load %struct.proc*, %struct.proc** %5, align 8
  %27 = getelementptr inbounds %struct.proc, %struct.proc* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.ps_strings*
  store %struct.ps_strings* %31, %struct.ps_strings** %10, align 8
  %32 = load %struct.ps_strings*, %struct.ps_strings** %10, align 8
  %33 = ptrtoint %struct.ps_strings* %32 to i64
  %34 = load i64, i64* @linux_szplatform, align 8
  %35 = sub nsw i64 %33, %34
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %9, align 8
  %37 = load %struct.image_params*, %struct.image_params** %3, align 8
  %38 = getelementptr inbounds %struct.image_params, %struct.image_params* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = bitcast i32* %39 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %6, align 8
  %41 = load i32, i32* @LINUX_AT_COUNT, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* @M_TEMP, align 4
  %46 = load i32, i32* @M_WAITOK, align 4
  %47 = load i32, i32* @M_ZERO, align 4
  %48 = or i32 %46, %47
  %49 = call i32* @malloc(i32 %44, i32 %45, i32 %48)
  store i32* %49, i32** %8, align 8
  store i32* %49, i32** %7, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* @LINUX_AT_SYSINFO_EHDR, align 4
  %52 = load %struct.image_params*, %struct.image_params** %3, align 8
  %53 = getelementptr inbounds %struct.image_params, %struct.image_params* %52, i32 0, i32 3
  %54 = load %struct.proc*, %struct.proc** %53, align 8
  %55 = getelementptr inbounds %struct.proc, %struct.proc* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @AUXARGS_ENTRY(i32* %50, i32 %51, i32 %58)
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* @LINUX_AT_SYSINFO, align 4
  %62 = load i32, i32* @linux_vsyscall, align 4
  %63 = call i32 @AUXARGS_ENTRY(i32* %60, i32 %61, i32 %62)
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* @LINUX_AT_HWCAP, align 4
  %66 = load i32, i32* @cpu_feature, align 4
  %67 = call i32 @AUXARGS_ENTRY(i32* %64, i32 %65, i32 %66)
  %68 = load i32, i32* @curthread, align 4
  %69 = call i64 @linux_kernver(i32 %68)
  %70 = load i64, i64* @LINUX_KERNVER_2004000, align 8
  %71 = icmp sge i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %2
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* @LINUX_AT_CLKTCK, align 4
  %75 = load i32, i32* @stclohz, align 4
  %76 = call i32 @AUXARGS_ENTRY(i32* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %2
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* @AT_PHDR, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @AUXARGS_ENTRY(i32* %78, i32 %79, i32 %82)
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* @AT_PHENT, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @AUXARGS_ENTRY(i32* %84, i32 %85, i32 %88)
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* @AT_PHNUM, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @AUXARGS_ENTRY(i32* %90, i32 %91, i32 %94)
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* @AT_PAGESZ, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @AUXARGS_ENTRY(i32* %96, i32 %97, i32 %100)
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* @AT_FLAGS, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @AUXARGS_ENTRY(i32* %102, i32 %103, i32 %106)
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* @AT_ENTRY, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @AUXARGS_ENTRY(i32* %108, i32 %109, i32 %112)
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* @AT_BASE, align 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @AUXARGS_ENTRY(i32* %114, i32 %115, i32 %118)
  %120 = load i32*, i32** %8, align 8
  %121 = load i32, i32* @LINUX_AT_SECURE, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @AUXARGS_ENTRY(i32* %120, i32 %121, i32 %122)
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* @AT_UID, align 4
  %126 = load %struct.image_params*, %struct.image_params** %3, align 8
  %127 = getelementptr inbounds %struct.image_params, %struct.image_params* %126, i32 0, i32 3
  %128 = load %struct.proc*, %struct.proc** %127, align 8
  %129 = getelementptr inbounds %struct.proc, %struct.proc* %128, i32 0, i32 1
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @AUXARGS_ENTRY(i32* %124, i32 %125, i32 %132)
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* @AT_EUID, align 4
  %136 = load %struct.image_params*, %struct.image_params** %3, align 8
  %137 = getelementptr inbounds %struct.image_params, %struct.image_params* %136, i32 0, i32 3
  %138 = load %struct.proc*, %struct.proc** %137, align 8
  %139 = getelementptr inbounds %struct.proc, %struct.proc* %138, i32 0, i32 1
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @AUXARGS_ENTRY(i32* %134, i32 %135, i32 %142)
  %144 = load i32*, i32** %8, align 8
  %145 = load i32, i32* @AT_GID, align 4
  %146 = load %struct.image_params*, %struct.image_params** %3, align 8
  %147 = getelementptr inbounds %struct.image_params, %struct.image_params* %146, i32 0, i32 3
  %148 = load %struct.proc*, %struct.proc** %147, align 8
  %149 = getelementptr inbounds %struct.proc, %struct.proc* %148, i32 0, i32 1
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @AUXARGS_ENTRY(i32* %144, i32 %145, i32 %152)
  %154 = load i32*, i32** %8, align 8
  %155 = load i32, i32* @AT_EGID, align 4
  %156 = load %struct.image_params*, %struct.image_params** %3, align 8
  %157 = getelementptr inbounds %struct.image_params, %struct.image_params* %156, i32 0, i32 3
  %158 = load %struct.proc*, %struct.proc** %157, align 8
  %159 = getelementptr inbounds %struct.proc, %struct.proc* %158, i32 0, i32 1
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @AUXARGS_ENTRY(i32* %154, i32 %155, i32 %162)
  %164 = load i32*, i32** %8, align 8
  %165 = load i32, i32* @LINUX_AT_PLATFORM, align 4
  %166 = load i32*, i32** %9, align 8
  %167 = call i32 @PTROUT(i32* %166)
  %168 = call i32 @AUXARGS_ENTRY(i32* %164, i32 %165, i32 %167)
  %169 = load i32*, i32** %8, align 8
  %170 = load i32, i32* @LINUX_AT_RANDOM, align 4
  %171 = load %struct.image_params*, %struct.image_params** %3, align 8
  %172 = getelementptr inbounds %struct.image_params, %struct.image_params* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @AUXARGS_ENTRY(i32* %169, i32 %170, i32 %173)
  %175 = load %struct.image_params*, %struct.image_params** %3, align 8
  %176 = getelementptr inbounds %struct.image_params, %struct.image_params* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %77
  %180 = load i32*, i32** %8, align 8
  %181 = load i32, i32* @LINUX_AT_EXECFN, align 4
  %182 = load %struct.image_params*, %struct.image_params** %3, align 8
  %183 = getelementptr inbounds %struct.image_params, %struct.image_params* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @AUXARGS_ENTRY(i32* %180, i32 %181, i32 %184)
  br label %186

186:                                              ; preds = %179, %77
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 7
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, -1
  br i1 %190, label %191, label %198

191:                                              ; preds = %186
  %192 = load i32*, i32** %8, align 8
  %193 = load i32, i32* @AT_EXECFD, align 4
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 7
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @AUXARGS_ENTRY(i32* %192, i32 %193, i32 %196)
  br label %198

198:                                              ; preds = %191, %186
  %199 = load i32*, i32** %8, align 8
  %200 = load i32, i32* @AT_NULL, align 4
  %201 = call i32 @AUXARGS_ENTRY(i32* %199, i32 %200, i32 0)
  %202 = load %struct.image_params*, %struct.image_params** %3, align 8
  %203 = getelementptr inbounds %struct.image_params, %struct.image_params* %202, i32 0, i32 2
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* @M_TEMP, align 4
  %206 = call i32 @free(i32* %204, i32 %205)
  %207 = load %struct.image_params*, %struct.image_params** %3, align 8
  %208 = getelementptr inbounds %struct.image_params, %struct.image_params* %207, i32 0, i32 2
  store i32* null, i32** %208, align 8
  %209 = load i32*, i32** %8, align 8
  %210 = load i32*, i32** %7, align 8
  %211 = ptrtoint i32* %209 to i64
  %212 = ptrtoint i32* %210 to i64
  %213 = sub i64 %211, %212
  %214 = sdiv exact i64 %213, 4
  %215 = load i32, i32* @LINUX_AT_COUNT, align 4
  %216 = sext i32 %215 to i64
  %217 = icmp sle i64 %214, %216
  %218 = zext i1 %217 to i32
  %219 = call i32 @KASSERT(i32 %218, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %220 = load i32*, i32** %8, align 8
  %221 = load i32*, i32** %7, align 8
  %222 = ptrtoint i32* %220 to i64
  %223 = ptrtoint i32* %221 to i64
  %224 = sub i64 %222, %223
  %225 = sdiv exact i64 %224, 4
  %226 = mul i64 4, %225
  %227 = trunc i64 %226 to i32
  store i32 %227, i32* %11, align 4
  %228 = load i32, i32* %11, align 4
  %229 = load i32*, i32** %4, align 8
  %230 = load i32, i32* %229, align 4
  %231 = sub nsw i32 %230, %228
  store i32 %231, i32* %229, align 4
  %232 = load i32*, i32** %7, align 8
  %233 = load i32*, i32** %4, align 8
  %234 = load i32, i32* %233, align 4
  %235 = sext i32 %234 to i64
  %236 = inttoptr i64 %235 to i8*
  %237 = load i32, i32* %11, align 4
  %238 = call i32 @copyout(i32* %232, i8* %236, i32 %237)
  %239 = load i32*, i32** %7, align 8
  %240 = load i32, i32* @M_TEMP, align 4
  %241 = call i32 @free(i32* %239, i32 %240)
  ret void
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @AUXARGS_ENTRY(i32*, i32, i32) #1

declare dso_local i64 @linux_kernver(i32) #1

declare dso_local i32 @PTROUT(i32*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @copyout(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
