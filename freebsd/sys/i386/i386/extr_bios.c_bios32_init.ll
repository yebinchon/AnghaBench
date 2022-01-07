; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_bios.c_bios32_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_bios.c_bios32_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.PnPBIOS_table = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.bios32_SDheader = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"_32_\00", align 1
@BIOS_START = common dso_local global i32 0, align 4
@BIOS_SIZE = common dso_local global i32 0, align 4
@bios32_SDCI = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"bios32: Found BIOS32 Service Directory header at %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"bios32: Entry = 0x%x (%x)  Rev = %d  Len = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"machdep.bios.pci\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@PCIbios = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"pcibios: PCI BIOS entry at 0x%x+0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"bios32: Bad BIOS32 Service Directory\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"machdep.bios.pnp\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"$PnP\00", align 1
@PnPBIOStable = common dso_local global %struct.PnPBIOS_table* null, align 8
@.str.9 = private unnamed_addr constant [36 x i8] c"pnpbios: Found PnP BIOS data at %p\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"pnpbios: Entry = %x:%x  Rev = %d.%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"pnpbios: Event flag at %x\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"pnpbios: OEM ID %x\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"pnpbios: Bad PnP BIOS data checksum\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Other BIOS signatures found:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bios32_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bios32_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bios32_SDheader*, align 8
  %5 = alloca %struct.PnPBIOS_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %10 = call i32 @bios_sigsearch(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4, i32 16, i32 0)
  store i32 %10, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %103

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @BIOS_PADDRTOVADDR(i32 %13)
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to %struct.bios32_SDheader*
  store %struct.bios32_SDheader* %16, %struct.bios32_SDheader** %4, align 8
  %17 = load %struct.bios32_SDheader*, %struct.bios32_SDheader** %4, align 8
  %18 = bitcast %struct.bios32_SDheader* %17 to i64*
  store i64* %18, i64** %7, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %34, %12
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.bios32_SDheader*, %struct.bios32_SDheader** %4, align 8
  %22 = getelementptr inbounds %struct.bios32_SDheader, %struct.bios32_SDheader* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 16
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = load i64*, i64** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = add nsw i64 %32, %31
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %19

37:                                               ; preds = %19
  %38 = load i64, i64* %6, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %100

40:                                               ; preds = %37
  %41 = load i32, i32* @BIOS_START, align 4
  %42 = load %struct.bios32_SDheader*, %struct.bios32_SDheader** %4, align 8
  %43 = getelementptr inbounds %struct.bios32_SDheader, %struct.bios32_SDheader* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp sle i32 %41, %44
  br i1 %45, label %46, label %100

46:                                               ; preds = %40
  %47 = load %struct.bios32_SDheader*, %struct.bios32_SDheader** %4, align 8
  %48 = getelementptr inbounds %struct.bios32_SDheader, %struct.bios32_SDheader* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BIOS_START, align 4
  %51 = load i32, i32* @BIOS_SIZE, align 4
  %52 = add nsw i32 %50, %51
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %100

54:                                               ; preds = %46
  %55 = load %struct.bios32_SDheader*, %struct.bios32_SDheader** %4, align 8
  %56 = getelementptr inbounds %struct.bios32_SDheader, %struct.bios32_SDheader* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @BIOS_PADDRTOVADDR(i32 %57)
  store i32 %58, i32* @bios32_SDCI, align 4
  %59 = load i64, i64* @bootverbose, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %54
  %62 = load %struct.bios32_SDheader*, %struct.bios32_SDheader** %4, align 8
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), %struct.bios32_SDheader* %62)
  %64 = load %struct.bios32_SDheader*, %struct.bios32_SDheader** %4, align 8
  %65 = getelementptr inbounds %struct.bios32_SDheader, %struct.bios32_SDheader* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @bios32_SDCI, align 4
  %68 = load %struct.bios32_SDheader*, %struct.bios32_SDheader** %4, align 8
  %69 = getelementptr inbounds %struct.bios32_SDheader, %struct.bios32_SDheader* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.bios32_SDheader*, %struct.bios32_SDheader** %4, align 8
  %72 = getelementptr inbounds %struct.bios32_SDheader, %struct.bios32_SDheader* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %67, i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %61, %54
  %76 = call i8* @kern_getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i8* %76, i8** %9, align 8
  %77 = icmp eq i8* %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load i8*, i8** %9, align 8
  %80 = call i64 @strcmp(i8* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %78, %75
  store i32 1229148196, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @PCIbios, i32 0, i32 2, i32 0), align 4
  %83 = call i32 @bios32_SDlookup(%struct.TYPE_5__* @PCIbios)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %82
  %86 = load i64, i64* @bootverbose, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @PCIbios, i32 0, i32 0), align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @PCIbios, i32 0, i32 1), align 4
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %85, %82
  br label %93

93:                                               ; preds = %92, %78
  %94 = load i8*, i8** %9, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @freeenv(i8* %97)
  br label %99

99:                                               ; preds = %96, %93
  br label %102

100:                                              ; preds = %46, %40, %37
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %99
  br label %103

103:                                              ; preds = %102, %1
  %104 = call i8* @kern_getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  store i8* %104, i8** %9, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = load i8*, i8** %9, align 8
  %108 = call i64 @strcmp(i8* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %187

110:                                              ; preds = %106, %103
  %111 = call i32 @bios_sigsearch(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 4, i32 16, i32 0)
  store i32 %111, i32* %3, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %187

113:                                              ; preds = %110
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @BIOS_PADDRTOVADDR(i32 %114)
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to %struct.PnPBIOS_table*
  store %struct.PnPBIOS_table* %117, %struct.PnPBIOS_table** %5, align 8
  %118 = load %struct.PnPBIOS_table*, %struct.PnPBIOS_table** %5, align 8
  %119 = bitcast %struct.PnPBIOS_table* %118 to i64*
  store i64* %119, i64** %7, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %8, align 4
  br label %120

120:                                              ; preds = %134, %113
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.PnPBIOS_table*, %struct.PnPBIOS_table** %5, align 8
  %123 = getelementptr inbounds %struct.PnPBIOS_table, %struct.PnPBIOS_table* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %137

126:                                              ; preds = %120
  %127 = load i64*, i64** %7, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %6, align 8
  %133 = add nsw i64 %132, %131
  store i64 %133, i64* %6, align 8
  br label %134

134:                                              ; preds = %126
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  br label %120

137:                                              ; preds = %120
  %138 = load i64, i64* %6, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %184

140:                                              ; preds = %137
  %141 = load %struct.PnPBIOS_table*, %struct.PnPBIOS_table** %5, align 8
  store %struct.PnPBIOS_table* %141, %struct.PnPBIOS_table** @PnPBIOStable, align 8
  %142 = load i64, i64* @bootverbose, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %183

144:                                              ; preds = %140
  %145 = load %struct.PnPBIOS_table*, %struct.PnPBIOS_table** %5, align 8
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), %struct.PnPBIOS_table* %145)
  %147 = load %struct.PnPBIOS_table*, %struct.PnPBIOS_table** %5, align 8
  %148 = getelementptr inbounds %struct.PnPBIOS_table, %struct.PnPBIOS_table* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.PnPBIOS_table*, %struct.PnPBIOS_table** %5, align 8
  %151 = getelementptr inbounds %struct.PnPBIOS_table, %struct.PnPBIOS_table* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.PnPBIOS_table*, %struct.PnPBIOS_table** %5, align 8
  %154 = getelementptr inbounds %struct.PnPBIOS_table, %struct.PnPBIOS_table* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = ashr i32 %155, 4
  %157 = load %struct.PnPBIOS_table*, %struct.PnPBIOS_table** %5, align 8
  %158 = getelementptr inbounds %struct.PnPBIOS_table, %struct.PnPBIOS_table* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, 15
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %149, i32 %152, i32 %156, i32 %160)
  %162 = load %struct.PnPBIOS_table*, %struct.PnPBIOS_table** %5, align 8
  %163 = getelementptr inbounds %struct.PnPBIOS_table, %struct.PnPBIOS_table* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, 3
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %172

167:                                              ; preds = %144
  %168 = load %struct.PnPBIOS_table*, %struct.PnPBIOS_table** %5, align 8
  %169 = getelementptr inbounds %struct.PnPBIOS_table, %struct.PnPBIOS_table* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %170)
  br label %172

172:                                              ; preds = %167, %144
  %173 = load %struct.PnPBIOS_table*, %struct.PnPBIOS_table** %5, align 8
  %174 = getelementptr inbounds %struct.PnPBIOS_table, %struct.PnPBIOS_table* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %172
  %178 = load %struct.PnPBIOS_table*, %struct.PnPBIOS_table** %5, align 8
  %179 = getelementptr inbounds %struct.PnPBIOS_table, %struct.PnPBIOS_table* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %180)
  br label %182

182:                                              ; preds = %177, %172
  br label %183

183:                                              ; preds = %182, %140
  br label %186

184:                                              ; preds = %137
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  br label %186

186:                                              ; preds = %184, %183
  br label %187

187:                                              ; preds = %186, %110, %106
  %188 = load i8*, i8** %9, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i8*, i8** %9, align 8
  %192 = call i32 @freeenv(i8* %191)
  br label %193

193:                                              ; preds = %190, %187
  %194 = load i64, i64* @bootverbose, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  br label %198

198:                                              ; preds = %196, %193
  ret void
}

declare dso_local i32 @bios_sigsearch(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @BIOS_PADDRTOVADDR(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @kern_getenv(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @bios32_SDlookup(%struct.TYPE_5__*) #1

declare dso_local i32 @freeenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
