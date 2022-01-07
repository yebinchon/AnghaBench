; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_smapi.c_smapi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_smapi.c_smapi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.smapi_softc = type { i32*, i64, %struct.smapi_bios_header*, i32, i32, i64 }
%struct.smapi_bios_header = type { i32, i8*, i32, i32, i8*, i32, i8*, i32, i32, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to allocate memory resource.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@smapi_cdevsw = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Version: %d.%02d, Length: %d, Checksum: 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Information=0x%b\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"\10\01REAL_VM86\02PROTECTED_16\03PROTECTED_32\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@SMAPI_REAL_VM86 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"Real/VM86 mode: Segment 0x%04x, Offset 0x%04x\0A\00", align 1
@SMAPI_PROT_16BIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [54 x i8] c"16-bit Protected mode: Segment 0x%08x, Offset 0x%04x\0A\00", align 1
@SMAPI_PROT_32BIT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [54 x i8] c"32-bit Protected mode: Segment 0x%08x, Offset 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @smapi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smapi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.smapi_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.smapi_softc* @device_get_softc(i32 %6)
  store %struct.smapi_softc* %7, %struct.smapi_softc** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %10 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %12 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @SYS_RES_MEMORY, align 4
  %15 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %16 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %15, i32 0, i32 1
  %17 = load i32, i32* @RF_ACTIVE, align 4
  %18 = call i32* @bus_alloc_resource_any(i32 %13, i32 %14, i64* %16, i32 %17)
  %19 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %20 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %19, i32 0, i32 0
  store i32* %18, i32** %20, align 8
  %21 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %22 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = call i32 (i32, i8*, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  store i32 %28, i32* %5, align 4
  br label %167

29:                                               ; preds = %1
  %30 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %31 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @rman_get_virtual(i32* %32)
  %34 = inttoptr i64 %33 to %struct.smapi_bios_header*
  %35 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %36 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %35, i32 0, i32 2
  store %struct.smapi_bios_header* %34, %struct.smapi_bios_header** %36, align 8
  %37 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %38 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %37, i32 0, i32 2
  %39 = load %struct.smapi_bios_header*, %struct.smapi_bios_header** %38, align 8
  %40 = getelementptr inbounds %struct.smapi_bios_header, %struct.smapi_bios_header* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %43 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %42, i32 0, i32 2
  %44 = load %struct.smapi_bios_header*, %struct.smapi_bios_header** %43, align 8
  %45 = getelementptr inbounds %struct.smapi_bios_header, %struct.smapi_bios_header* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = sext i32 %41 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = call i64 @BIOS_PADDRTOVADDR(i8* %48)
  %50 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %51 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %50, i32 0, i32 5
  store i64 %49, i64* %51, align 8
  %52 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %53 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @device_get_unit(i32 %54)
  %56 = load i32, i32* @UID_ROOT, align 4
  %57 = load i32, i32* @GID_WHEEL, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @smapi_cdevsw, i32 0, i32 0), align 4
  %59 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %60 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @device_get_unit(i32 %61)
  %63 = call i32 @make_dev(%struct.TYPE_3__* @smapi_cdevsw, i32 %55, i32 %56, i32 %57, i32 384, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %62)
  %64 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %65 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %68 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %67, i32 0, i32 2
  %69 = load %struct.smapi_bios_header*, %struct.smapi_bios_header** %68, align 8
  %70 = getelementptr inbounds %struct.smapi_bios_header, %struct.smapi_bios_header* %69, i32 0, i32 10
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @bcd2bin(i32 %71)
  %73 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %74 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %73, i32 0, i32 2
  %75 = load %struct.smapi_bios_header*, %struct.smapi_bios_header** %74, align 8
  %76 = getelementptr inbounds %struct.smapi_bios_header, %struct.smapi_bios_header* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @bcd2bin(i32 %77)
  %79 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %80 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %79, i32 0, i32 2
  %81 = load %struct.smapi_bios_header*, %struct.smapi_bios_header** %80, align 8
  %82 = getelementptr inbounds %struct.smapi_bios_header, %struct.smapi_bios_header* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %85 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %84, i32 0, i32 2
  %86 = load %struct.smapi_bios_header*, %struct.smapi_bios_header** %85, align 8
  %87 = getelementptr inbounds %struct.smapi_bios_header, %struct.smapi_bios_header* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i32, i8*, ...) @device_printf(i32 %66, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %78, i32 %83, i32 %88)
  %90 = load i32, i32* %3, align 4
  %91 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %92 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %91, i32 0, i32 2
  %93 = load %struct.smapi_bios_header*, %struct.smapi_bios_header** %92, align 8
  %94 = getelementptr inbounds %struct.smapi_bios_header, %struct.smapi_bios_header* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i32, i8*, ...) @device_printf(i32 %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %95, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %97 = load i64, i64* @bootverbose, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %166

99:                                               ; preds = %29
  %100 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %101 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %100, i32 0, i32 2
  %102 = load %struct.smapi_bios_header*, %struct.smapi_bios_header** %101, align 8
  %103 = getelementptr inbounds %struct.smapi_bios_header, %struct.smapi_bios_header* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @SMAPI_REAL_VM86, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %99
  %109 = load i32, i32* %3, align 4
  %110 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %111 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %110, i32 0, i32 2
  %112 = load %struct.smapi_bios_header*, %struct.smapi_bios_header** %111, align 8
  %113 = getelementptr inbounds %struct.smapi_bios_header, %struct.smapi_bios_header* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %116 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %115, i32 0, i32 2
  %117 = load %struct.smapi_bios_header*, %struct.smapi_bios_header** %116, align 8
  %118 = getelementptr inbounds %struct.smapi_bios_header, %struct.smapi_bios_header* %117, i32 0, i32 4
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 (i32, i8*, ...) @device_printf(i32 %109, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %114, i8* %119)
  br label %121

121:                                              ; preds = %108, %99
  %122 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %123 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %122, i32 0, i32 2
  %124 = load %struct.smapi_bios_header*, %struct.smapi_bios_header** %123, align 8
  %125 = getelementptr inbounds %struct.smapi_bios_header, %struct.smapi_bios_header* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @SMAPI_PROT_16BIT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %121
  %131 = load i32, i32* %3, align 4
  %132 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %133 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %132, i32 0, i32 2
  %134 = load %struct.smapi_bios_header*, %struct.smapi_bios_header** %133, align 8
  %135 = getelementptr inbounds %struct.smapi_bios_header, %struct.smapi_bios_header* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %138 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %137, i32 0, i32 2
  %139 = load %struct.smapi_bios_header*, %struct.smapi_bios_header** %138, align 8
  %140 = getelementptr inbounds %struct.smapi_bios_header, %struct.smapi_bios_header* %139, i32 0, i32 6
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 (i32, i8*, ...) @device_printf(i32 %131, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 %136, i8* %141)
  br label %143

143:                                              ; preds = %130, %121
  %144 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %145 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %144, i32 0, i32 2
  %146 = load %struct.smapi_bios_header*, %struct.smapi_bios_header** %145, align 8
  %147 = getelementptr inbounds %struct.smapi_bios_header, %struct.smapi_bios_header* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @SMAPI_PROT_32BIT, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %165

152:                                              ; preds = %143
  %153 = load i32, i32* %3, align 4
  %154 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %155 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %154, i32 0, i32 2
  %156 = load %struct.smapi_bios_header*, %struct.smapi_bios_header** %155, align 8
  %157 = getelementptr inbounds %struct.smapi_bios_header, %struct.smapi_bios_header* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %160 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %159, i32 0, i32 2
  %161 = load %struct.smapi_bios_header*, %struct.smapi_bios_header** %160, align 8
  %162 = getelementptr inbounds %struct.smapi_bios_header, %struct.smapi_bios_header* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 (i32, i8*, ...) @device_printf(i32 %153, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 %158, i8* %163)
  br label %165

165:                                              ; preds = %152, %143
  br label %166

166:                                              ; preds = %165, %29
  store i32 0, i32* %2, align 4
  br label %184

167:                                              ; preds = %25
  %168 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %169 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %182

172:                                              ; preds = %167
  %173 = load i32, i32* %3, align 4
  %174 = load i32, i32* @SYS_RES_MEMORY, align 4
  %175 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %176 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.smapi_softc*, %struct.smapi_softc** %4, align 8
  %179 = getelementptr inbounds %struct.smapi_softc, %struct.smapi_softc* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 @bus_release_resource(i32 %173, i32 %174, i64 %177, i32* %180)
  br label %182

182:                                              ; preds = %172, %167
  %183 = load i32, i32* %5, align 4
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %182, %166
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local %struct.smapi_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @rman_get_virtual(i32*) #1

declare dso_local i64 @BIOS_PADDRTOVADDR(i8*) #1

declare dso_local i32 @make_dev(%struct.TYPE_3__*, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @bcd2bin(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
