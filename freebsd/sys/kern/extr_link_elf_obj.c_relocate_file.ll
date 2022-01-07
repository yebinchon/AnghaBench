; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_link_elf_obj.c_relocate_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_link_elf_obj.c_relocate_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i32, %struct.TYPE_13__, %struct.TYPE_17__*, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_18__* }

@.str = private unnamed_addr constant [15 x i8] c"lost a reltab!\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"lost base for reltab\00", align 1
@STB_LOCAL = common dso_local global i64 0, align 8
@ELF_RELOC_REL = common dso_local global i32 0, align 4
@elf_obj_lookup = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"link_elf_obj: symbol %s undefined\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"lost a relatab!\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"lost base for relatab\00", align 1
@ELF_RELOC_RELA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @relocate_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @relocate_file(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %120, %1
  %14 = load i32, i32* %10, align 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %123

19:                                               ; preds = %13
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 6
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  store %struct.TYPE_18__* %27, %struct.TYPE_18__** %5, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %29 = icmp eq %struct.TYPE_18__* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %19
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @link_elf_error(i32 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENOEXEC, align 4
  store i32 %36, i32* %2, align 4
  br label %237

37:                                               ; preds = %19
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 6
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i64 %47
  store %struct.TYPE_18__* %48, %struct.TYPE_18__** %4, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 6
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @findbase(%struct.TYPE_16__* %49, i32 %57)
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %37
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @link_elf_error(i32 %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @ENOEXEC, align 4
  store i32 %67, i32* %2, align 4
  br label %237

68:                                               ; preds = %37
  br label %69

69:                                               ; preds = %116, %68
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %72 = icmp ult %struct.TYPE_18__* %70, %71
  br i1 %72, label %73, label %119

73:                                               ; preds = %69
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @ELF_R_SYM(i32 %76)
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp sge i64 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %116

84:                                               ; preds = %73
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %86, align 8
  %88 = load i64, i64* %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i64 %88
  store %struct.TYPE_17__* %89, %struct.TYPE_17__** %9, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @ELF_ST_BIND(i32 %92)
  %94 = load i64, i64* @STB_LOCAL, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  br label %116

97:                                               ; preds = %84
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 3
  %100 = load i64, i64* %12, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %102 = load i32, i32* @ELF_RELOC_REL, align 4
  %103 = load i32, i32* @elf_obj_lookup, align 4
  %104 = call i64 @elf_reloc(%struct.TYPE_13__* %99, i64 %100, %struct.TYPE_18__* %101, i32 %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %97
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @symbol_name(%struct.TYPE_16__* %107, i32 %110)
  store i8* %111, i8** %8, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %112)
  %114 = load i32, i32* @ENOENT, align 4
  store i32 %114, i32* %2, align 4
  br label %237

115:                                              ; preds = %97
  br label %116

116:                                              ; preds = %115, %96, %83
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 1
  store %struct.TYPE_18__* %118, %struct.TYPE_18__** %5, align 8
  br label %69

119:                                              ; preds = %69
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %13

123:                                              ; preds = %13
  store i32 0, i32* %10, align 4
  br label %124

124:                                              ; preds = %231, %123
  %125 = load i32, i32* %10, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %234

130:                                              ; preds = %124
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 5
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %137, align 8
  store %struct.TYPE_18__* %138, %struct.TYPE_18__** %7, align 8
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %140 = icmp eq %struct.TYPE_18__* %139, null
  br i1 %140, label %141, label %148

141:                                              ; preds = %130
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @link_elf_error(i32 %145, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %147 = load i32, i32* @ENOEXEC, align 4
  store i32 %147, i32* %2, align 4
  br label %237

148:                                              ; preds = %130
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 5
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i64 %158
  store %struct.TYPE_18__* %159, %struct.TYPE_18__** %6, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 5
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i64 @findbase(%struct.TYPE_16__* %160, i32 %168)
  store i64 %169, i64* %12, align 8
  %170 = load i64, i64* %12, align 8
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %148
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @link_elf_error(i32 %176, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %178 = load i32, i32* @ENOEXEC, align 4
  store i32 %178, i32* %2, align 4
  br label %237

179:                                              ; preds = %148
  br label %180

180:                                              ; preds = %227, %179
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %183 = icmp ult %struct.TYPE_18__* %181, %182
  br i1 %183, label %184, label %230

184:                                              ; preds = %180
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i64 @ELF_R_SYM(i32 %187)
  store i64 %188, i64* %11, align 8
  %189 = load i64, i64* %11, align 8
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp sge i64 %189, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %184
  br label %227

195:                                              ; preds = %184
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 4
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %197, align 8
  %199 = load i64, i64* %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i64 %199
  store %struct.TYPE_17__* %200, %struct.TYPE_17__** %9, align 8
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i64 @ELF_ST_BIND(i32 %203)
  %205 = load i64, i64* @STB_LOCAL, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %195
  br label %227

208:                                              ; preds = %195
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 3
  %211 = load i64, i64* %12, align 8
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %213 = load i32, i32* @ELF_RELOC_RELA, align 4
  %214 = load i32, i32* @elf_obj_lookup, align 4
  %215 = call i64 @elf_reloc(%struct.TYPE_13__* %210, i64 %211, %struct.TYPE_18__* %212, i32 %213, i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %208
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i8* @symbol_name(%struct.TYPE_16__* %218, i32 %221)
  store i8* %222, i8** %8, align 8
  %223 = load i8*, i8** %8, align 8
  %224 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %223)
  %225 = load i32, i32* @ENOENT, align 4
  store i32 %225, i32* %2, align 4
  br label %237

226:                                              ; preds = %208
  br label %227

227:                                              ; preds = %226, %207, %194
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 1
  store %struct.TYPE_18__* %229, %struct.TYPE_18__** %7, align 8
  br label %180

230:                                              ; preds = %180
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %10, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %10, align 4
  br label %124

234:                                              ; preds = %124
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %236 = call i32 @elf_obj_cleanup_globals_cache(%struct.TYPE_16__* %235)
  store i32 0, i32* %2, align 4
  br label %237

237:                                              ; preds = %234, %217, %172, %141, %106, %61, %30
  %238 = load i32, i32* %2, align 4
  ret i32 %238
}

declare dso_local i32 @link_elf_error(i32, i8*) #1

declare dso_local i64 @findbase(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @ELF_R_SYM(i32) #1

declare dso_local i64 @ELF_ST_BIND(i32) #1

declare dso_local i64 @elf_reloc(%struct.TYPE_13__*, i64, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i8* @symbol_name(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @elf_obj_cleanup_globals_cache(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
