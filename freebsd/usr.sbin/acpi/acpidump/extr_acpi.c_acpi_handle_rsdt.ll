; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidump/extr_acpi.c_acpi_handle_rsdt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidump/extr_acpi.c_acpi_handle_rsdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_21__ = type { i32* }

@addr_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"RSDT entry %d (sig %.4s) is corrupt\00", align 1
@ACPI_SIG_FADT = common dso_local global i32 0, align 4
@ACPI_SIG_MADT = common dso_local global i32 0, align 4
@ACPI_SIG_HPET = common dso_local global i32 0, align 4
@ACPI_SIG_ECDT = common dso_local global i32 0, align 4
@ACPI_SIG_MCFG = common dso_local global i32 0, align 4
@ACPI_SIG_SLIT = common dso_local global i32 0, align 4
@ACPI_SIG_SRAT = common dso_local global i32 0, align 4
@ACPI_SIG_TCPA = common dso_local global i32 0, align 4
@ACPI_SIG_DMAR = common dso_local global i32 0, align 4
@ACPI_SIG_NFIT = common dso_local global i32 0, align 4
@ACPI_SIG_WDDT = common dso_local global i32 0, align 4
@ACPI_SIG_LPIT = common dso_local global i32 0, align 4
@ACPI_SIG_TPM2 = common dso_local global i32 0, align 4
@BEGIN_COMMENT = common dso_local global i8* null, align 8
@END_COMMENT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*)* @acpi_handle_rsdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_handle_rsdt(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %10 = call i32 @acpi_print_rsdt(%struct.TYPE_23__* %9)
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %12 = bitcast %struct.TYPE_23__* %11 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %12, %struct.TYPE_22__** %4, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %14 = bitcast %struct.TYPE_23__* %13 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %5, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = sub i64 %18, 8
  %20 = load i32, i32* @addr_size, align 4
  %21 = sext i32 %20 to i64
  %22 = udiv i64 %19, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %219, %1
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %222

28:                                               ; preds = %24
  %29 = load i32, i32* @addr_size, align 4
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @le32toh(i32 %38)
  store i64 %39, i64* %6, align 8
  br label %49

40:                                               ; preds = %28
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @le64toh(i32 %47)
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %40, %31
  %50 = load i64, i64* %6, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %219

53:                                               ; preds = %49
  %54 = load i64, i64* %6, align 8
  %55 = call i64 @acpi_map_sdt(i64 %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %56, %struct.TYPE_23__** %3, align 8
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @acpi_checksum(%struct.TYPE_23__* %57, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %53
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %67)
  br label %219

69:                                               ; preds = %53
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ACPI_SIG_FADT, align 4
  %74 = call i32 @memcmp(i32 %72, i32 %73, i32 4)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %69
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %78 = call i32 @acpi_handle_fadt(%struct.TYPE_23__* %77)
  br label %218

79:                                               ; preds = %69
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ACPI_SIG_MADT, align 4
  %84 = call i32 @memcmp(i32 %82, i32 %83, i32 4)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %88 = call i32 @acpi_handle_madt(%struct.TYPE_23__* %87)
  br label %217

89:                                               ; preds = %79
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ACPI_SIG_HPET, align 4
  %94 = call i32 @memcmp(i32 %92, i32 %93, i32 4)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %89
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %98 = call i32 @acpi_handle_hpet(%struct.TYPE_23__* %97)
  br label %216

99:                                               ; preds = %89
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @ACPI_SIG_ECDT, align 4
  %104 = call i32 @memcmp(i32 %102, i32 %103, i32 4)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %99
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %108 = call i32 @acpi_handle_ecdt(%struct.TYPE_23__* %107)
  br label %215

109:                                              ; preds = %99
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @ACPI_SIG_MCFG, align 4
  %114 = call i32 @memcmp(i32 %112, i32 %113, i32 4)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %109
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %118 = call i32 @acpi_handle_mcfg(%struct.TYPE_23__* %117)
  br label %214

119:                                              ; preds = %109
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @ACPI_SIG_SLIT, align 4
  %124 = call i32 @memcmp(i32 %122, i32 %123, i32 4)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %119
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %128 = call i32 @acpi_handle_slit(%struct.TYPE_23__* %127)
  br label %213

129:                                              ; preds = %119
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @ACPI_SIG_SRAT, align 4
  %134 = call i32 @memcmp(i32 %132, i32 %133, i32 4)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %129
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %138 = call i32 @acpi_handle_srat(%struct.TYPE_23__* %137)
  br label %212

139:                                              ; preds = %129
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @ACPI_SIG_TCPA, align 4
  %144 = call i32 @memcmp(i32 %142, i32 %143, i32 4)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %139
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %148 = call i32 @acpi_handle_tcpa(%struct.TYPE_23__* %147)
  br label %211

149:                                              ; preds = %139
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @ACPI_SIG_DMAR, align 4
  %154 = call i32 @memcmp(i32 %152, i32 %153, i32 4)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %149
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %158 = call i32 @acpi_handle_dmar(%struct.TYPE_23__* %157)
  br label %210

159:                                              ; preds = %149
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @ACPI_SIG_NFIT, align 4
  %164 = call i32 @memcmp(i32 %162, i32 %163, i32 4)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %159
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %168 = call i32 @acpi_handle_nfit(%struct.TYPE_23__* %167)
  br label %209

169:                                              ; preds = %159
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @ACPI_SIG_WDDT, align 4
  %174 = call i32 @memcmp(i32 %172, i32 %173, i32 4)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %169
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %178 = call i32 @acpi_handle_wddt(%struct.TYPE_23__* %177)
  br label %208

179:                                              ; preds = %169
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @ACPI_SIG_LPIT, align 4
  %184 = call i32 @memcmp(i32 %182, i32 %183, i32 4)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %179
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %188 = call i32 @acpi_handle_lpit(%struct.TYPE_23__* %187)
  br label %207

189:                                              ; preds = %179
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @ACPI_SIG_TPM2, align 4
  %194 = call i32 @memcmp(i32 %192, i32 %193, i32 4)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %189
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %198 = call i32 @acpi_handle_tpm2(%struct.TYPE_23__* %197)
  br label %206

199:                                              ; preds = %189
  %200 = load i8*, i8** @BEGIN_COMMENT, align 8
  %201 = call i32 @printf(i8* %200)
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %203 = call i32 @acpi_print_sdt(%struct.TYPE_23__* %202)
  %204 = load i8*, i8** @END_COMMENT, align 8
  %205 = call i32 @printf(i8* %204)
  br label %206

206:                                              ; preds = %199, %196
  br label %207

207:                                              ; preds = %206, %186
  br label %208

208:                                              ; preds = %207, %176
  br label %209

209:                                              ; preds = %208, %166
  br label %210

210:                                              ; preds = %209, %156
  br label %211

211:                                              ; preds = %210, %146
  br label %212

212:                                              ; preds = %211, %136
  br label %213

213:                                              ; preds = %212, %126
  br label %214

214:                                              ; preds = %213, %116
  br label %215

215:                                              ; preds = %214, %106
  br label %216

216:                                              ; preds = %215, %96
  br label %217

217:                                              ; preds = %216, %86
  br label %218

218:                                              ; preds = %217, %76
  br label %219

219:                                              ; preds = %218, %63, %52
  %220 = load i32, i32* %8, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %8, align 4
  br label %24

222:                                              ; preds = %24
  ret void
}

declare dso_local i32 @acpi_print_rsdt(%struct.TYPE_23__*) #1

declare dso_local i64 @le32toh(i32) #1

declare dso_local i64 @le64toh(i32) #1

declare dso_local i64 @acpi_map_sdt(i64) #1

declare dso_local i64 @acpi_checksum(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @warnx(i8*, i32, i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @acpi_handle_fadt(%struct.TYPE_23__*) #1

declare dso_local i32 @acpi_handle_madt(%struct.TYPE_23__*) #1

declare dso_local i32 @acpi_handle_hpet(%struct.TYPE_23__*) #1

declare dso_local i32 @acpi_handle_ecdt(%struct.TYPE_23__*) #1

declare dso_local i32 @acpi_handle_mcfg(%struct.TYPE_23__*) #1

declare dso_local i32 @acpi_handle_slit(%struct.TYPE_23__*) #1

declare dso_local i32 @acpi_handle_srat(%struct.TYPE_23__*) #1

declare dso_local i32 @acpi_handle_tcpa(%struct.TYPE_23__*) #1

declare dso_local i32 @acpi_handle_dmar(%struct.TYPE_23__*) #1

declare dso_local i32 @acpi_handle_nfit(%struct.TYPE_23__*) #1

declare dso_local i32 @acpi_handle_wddt(%struct.TYPE_23__*) #1

declare dso_local i32 @acpi_handle_lpit(%struct.TYPE_23__*) #1

declare dso_local i32 @acpi_handle_tpm2(%struct.TYPE_23__*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @acpi_print_sdt(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
