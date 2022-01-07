; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/acpica/extr_acpi_machdep.c_acpi_find_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/acpica/extr_acpi_machdep.c_acpi_find_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i64 }
%struct.TYPE_10__ = type { i64*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"acpi\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"ACPI: Failed to map RSDP\0A\00", align 1
@ACPI_RSDP_XCHECKSUM_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"ACPI: RSDP failed extended checksum\0A\00", align 1
@ACPI_SIG_XSDT = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"ACPI: Failed to map XSDT\0A\00", align 1
@ACPI_SIG_RSDT = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"ACPI: Failed to map RSDT\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"ACPI: No %s table found\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"%s: Found table at 0x%jx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_find_table(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = call i64 @resource_disabled(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %190

15:                                               ; preds = %1
  %16 = call i32 (...) @AcpiOsGetRootPointer()
  store i32 %16, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i64 0, i64* %2, align 8
  br label %190

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = call %struct.TYPE_11__* @pmap_mapbios(i32 %20, i32 24)
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %5, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = icmp eq %struct.TYPE_11__* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i64, i64* @bootverbose, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %24
  store i64 0, i64* %2, align 8
  br label %190

30:                                               ; preds = %19
  store i64 0, i64* %9, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %33, 2
  br i1 %34, label %35, label %105

35:                                               ; preds = %30
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %105

40:                                               ; preds = %35
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = bitcast %struct.TYPE_11__* %41 to i32*
  %43 = load i32, i32* @ACPI_RSDP_XCHECKSUM_LENGTH, align 4
  %44 = call i64 @AcpiTbChecksum(i32* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i64, i64* @bootverbose, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %46
  store i64 0, i64* %2, align 8
  br label %190

52:                                               ; preds = %40
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i8*, i8** @ACPI_SIG_XSDT, align 8
  %57 = call %struct.TYPE_10__* @map_table(i64 %55, i32 2, i8* %56)
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %7, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = icmp eq %struct.TYPE_10__* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load i64, i64* @bootverbose, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %60
  store i64 0, i64* %2, align 8
  br label %190

66:                                               ; preds = %52
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = sub i64 %71, 16
  %73 = udiv i64 %72, 4
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %99, %66
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %102

79:                                               ; preds = %75
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load i8*, i8** %3, align 8
  %88 = call i64 @probe_table(i64 %86, i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %79
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %9, align 8
  br label %102

98:                                               ; preds = %79
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %75

102:                                              ; preds = %90, %75
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %104 = call i32 @acpi_unmap_table(%struct.TYPE_10__* %103)
  br label %158

105:                                              ; preds = %35, %30
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i8*, i8** @ACPI_SIG_RSDT, align 8
  %110 = call %struct.TYPE_10__* @map_table(i64 %108, i32 2, i8* %109)
  store %struct.TYPE_10__* %110, %struct.TYPE_10__** %6, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %112 = icmp eq %struct.TYPE_10__* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %105
  %114 = load i64, i64* @bootverbose, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %113
  store i64 0, i64* %2, align 8
  br label %190

119:                                              ; preds = %105
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = sub i64 %124, 16
  %126 = udiv i64 %125, 4
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %128

128:                                              ; preds = %152, %119
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %155

132:                                              ; preds = %128
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load i8*, i8** %3, align 8
  %141 = call i64 @probe_table(i64 %139, i8* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %132
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i64*, i64** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %9, align 8
  br label %155

151:                                              ; preds = %132
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  br label %128

155:                                              ; preds = %143, %128
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %157 = call i32 @acpi_unmap_table(%struct.TYPE_10__* %156)
  br label %158

158:                                              ; preds = %155, %102
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %160 = ptrtoint %struct.TYPE_11__* %159 to i32
  %161 = call i32 @pmap_unmapbios(i32 %160, i32 24)
  %162 = load i64, i64* %9, align 8
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %158
  %165 = load i64, i64* @bootverbose, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i8*, i8** %3, align 8
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %168)
  br label %170

170:                                              ; preds = %167, %164
  store i64 0, i64* %2, align 8
  br label %190

171:                                              ; preds = %158
  %172 = load i64, i64* @bootverbose, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = load i8*, i8** %3, align 8
  %176 = load i64, i64* %9, align 8
  %177 = trunc i64 %176 to i32
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %175, i32 %177)
  br label %179

179:                                              ; preds = %174, %171
  %180 = load i64, i64* %9, align 8
  %181 = load i8*, i8** %3, align 8
  %182 = call %struct.TYPE_10__* @map_table(i64 %180, i32 0, i8* %181)
  store %struct.TYPE_10__* %182, %struct.TYPE_10__** %8, align 8
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %184 = icmp eq %struct.TYPE_10__* %183, null
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  store i64 0, i64* %2, align 8
  br label %190

186:                                              ; preds = %179
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %188 = call i32 @acpi_unmap_table(%struct.TYPE_10__* %187)
  %189 = load i64, i64* %9, align 8
  store i64 %189, i64* %2, align 8
  br label %190

190:                                              ; preds = %186, %185, %170, %118, %65, %51, %29, %18, %14
  %191 = load i64, i64* %2, align 8
  ret i64 %191
}

declare dso_local i64 @resource_disabled(i8*, i32) #1

declare dso_local i32 @AcpiOsGetRootPointer(...) #1

declare dso_local %struct.TYPE_11__* @pmap_mapbios(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @AcpiTbChecksum(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @map_table(i64, i32, i8*) #1

declare dso_local i64 @probe_table(i64, i8*) #1

declare dso_local i32 @acpi_unmap_table(%struct.TYPE_10__*) #1

declare dso_local i32 @pmap_unmapbios(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
