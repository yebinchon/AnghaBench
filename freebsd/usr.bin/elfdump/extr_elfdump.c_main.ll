; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/elfdump/extr_elfdump.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/elfdump/extr_elfdump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@stdout = common dso_local global i32* null, align 8
@out = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"acdEeiGhnprsw:\00", align 1
@ED_ALL = common dso_local global i32 0, align 4
@ED_SHDR = common dso_local global i32 0, align 4
@ED_DYN = common dso_local global i32 0, align 4
@ED_IS_ELF = common dso_local global i32 0, align 4
@ED_EHDR = common dso_local global i32 0, align 4
@ED_INTERP = common dso_local global i32 0, align 4
@ED_GOT = common dso_local global i32 0, align 4
@ED_HASH = common dso_local global i32 0, align 4
@ED_NOTE = common dso_local global i32 0, align 4
@ED_PHDR = common dso_local global i32 0, align 4
@ED_REL = common dso_local global i32 0, align 4
@ED_SYMTAB = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CAP_FSTAT = common dso_local global i32 0, align 4
@CAP_WRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"unable to limit rights for %s\00", align 1
@optind = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@CAP_MMAP_R = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"unable to limit rights for stdio\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"unable to enter capability mode\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"not an elf file\00", align 1
@E_PHOFF = common dso_local global i32 0, align 4
@E_SHOFF = common dso_local global i32 0, align 4
@E_PHENTSIZE = common dso_local global i32 0, align 4
@E_PHNUM = common dso_local global i32 0, align 4
@E_SHENTSIZE = common dso_local global i32 0, align 4
@SH_OFFSET = common dso_local global i32 0, align 4
@shstrtab = common dso_local global i8* null, align 8
@SH_NAME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c".strtab\00", align 1
@strtab = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c".dynstr\00", align 1
@dynstr = common dso_local global i8* null, align 8
@P_TYPE = common dso_local global i32 0, align 4
@SH_TYPE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c".note.tag\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c".got\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.stat, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %26 = load i32*, i32** @stdout, align 8
  store i32* %26, i32** @out, align 8
  store i32 0, i32* %18, align 4
  br label %27

27:                                               ; preds = %100, %2
  %28 = load i32, i32* %4, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = call i32 @getopt(i32 %28, i8** %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %24, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %101

32:                                               ; preds = %27
  %33 = load i32, i32* %24, align 4
  switch i32 %33, label %98 [
    i32 97, label %34
    i32 99, label %36
    i32 100, label %40
    i32 69, label %44
    i32 101, label %46
    i32 105, label %50
    i32 71, label %54
    i32 104, label %58
    i32 110, label %62
    i32 112, label %66
    i32 114, label %70
    i32 115, label %74
    i32 119, label %78
    i32 63, label %97
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* @ED_ALL, align 4
  store i32 %35, i32* %18, align 4
  br label %100

36:                                               ; preds = %32
  %37 = load i32, i32* @ED_SHDR, align 4
  %38 = load i32, i32* %18, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %18, align 4
  br label %100

40:                                               ; preds = %32
  %41 = load i32, i32* @ED_DYN, align 4
  %42 = load i32, i32* %18, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %18, align 4
  br label %100

44:                                               ; preds = %32
  %45 = load i32, i32* @ED_IS_ELF, align 4
  store i32 %45, i32* %18, align 4
  br label %100

46:                                               ; preds = %32
  %47 = load i32, i32* @ED_EHDR, align 4
  %48 = load i32, i32* %18, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %18, align 4
  br label %100

50:                                               ; preds = %32
  %51 = load i32, i32* @ED_INTERP, align 4
  %52 = load i32, i32* %18, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %18, align 4
  br label %100

54:                                               ; preds = %32
  %55 = load i32, i32* @ED_GOT, align 4
  %56 = load i32, i32* %18, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %18, align 4
  br label %100

58:                                               ; preds = %32
  %59 = load i32, i32* @ED_HASH, align 4
  %60 = load i32, i32* %18, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %18, align 4
  br label %100

62:                                               ; preds = %32
  %63 = load i32, i32* @ED_NOTE, align 4
  %64 = load i32, i32* %18, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %18, align 4
  br label %100

66:                                               ; preds = %32
  %67 = load i32, i32* @ED_PHDR, align 4
  %68 = load i32, i32* %18, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %18, align 4
  br label %100

70:                                               ; preds = %32
  %71 = load i32, i32* @ED_REL, align 4
  %72 = load i32, i32* %18, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %18, align 4
  br label %100

74:                                               ; preds = %32
  %75 = load i32, i32* @ED_SYMTAB, align 4
  %76 = load i32, i32* %18, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %18, align 4
  br label %100

78:                                               ; preds = %32
  %79 = load i32, i32* @optarg, align 4
  %80 = call i32* @fopen(i32 %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %80, i32** @out, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* @optarg, align 4
  %84 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i32, i32* @CAP_FSTAT, align 4
  %87 = load i32, i32* @CAP_WRITE, align 4
  %88 = call i32 (i32*, ...) @cap_rights_init(i32* %6, i32 %86, i32 %87)
  %89 = load i32*, i32** @out, align 8
  %90 = call i32 @fileno(i32* %89)
  %91 = call i64 @caph_rights_limit(i32 %90, i32* %6)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load i32, i32* @optarg, align 4
  %95 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %93, %85
  br label %100

97:                                               ; preds = %32
  br label %98

98:                                               ; preds = %32, %97
  %99 = call i32 (...) @usage()
  br label %100

100:                                              ; preds = %98, %96, %74, %70, %66, %62, %58, %54, %50, %46, %44, %40, %36, %34
  br label %27

101:                                              ; preds = %27
  %102 = load i64, i64* @optind, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = sub nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %4, align 4
  %107 = load i64, i64* @optind, align 8
  %108 = load i8**, i8*** %5, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 %107
  store i8** %109, i8*** %5, align 8
  %110 = load i32, i32* %4, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %133, label %112

112:                                              ; preds = %101
  %113 = load i32, i32* %18, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %133, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* @ED_IS_ELF, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %115
  %121 = load i32, i32* %4, align 4
  %122 = icmp ne i32 %121, 1
  br i1 %122, label %133, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* @ED_IS_ELF, align 4
  %126 = xor i32 %125, -1
  %127 = and i32 %124, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %123
  %130 = load i32*, i32** @out, align 8
  %131 = load i32*, i32** @stdout, align 8
  %132 = icmp ne i32* %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %129, %123, %120, %112, %101
  %134 = call i32 (...) @usage()
  br label %135

135:                                              ; preds = %133, %129, %115
  %136 = load i8**, i8*** %5, align 8
  %137 = load i8*, i8** %136, align 8
  %138 = load i32, i32* @O_RDONLY, align 4
  %139 = call i32 @open(i8* %137, i32 %138)
  store i32 %139, i32* %23, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %135
  %142 = load i32, i32* %23, align 4
  %143 = call i64 @fstat(i32 %142, %struct.stat* %17)
  %144 = icmp slt i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %141, %135
  %146 = load i8**, i8*** %5, align 8
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %147)
  br label %149

149:                                              ; preds = %145, %141
  %150 = load i32, i32* @CAP_MMAP_R, align 4
  %151 = call i32 (i32*, ...) @cap_rights_init(i32* %6, i32 %150)
  %152 = load i32, i32* %23, align 4
  %153 = call i64 @caph_rights_limit(i32 %152, i32* %6)
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = load i8**, i8*** %5, align 8
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %157)
  br label %159

159:                                              ; preds = %155, %149
  %160 = call i32 (i32*, ...) @cap_rights_init(i32* %6)
  %161 = load i32, i32* @STDIN_FILENO, align 4
  %162 = call i64 @caph_rights_limit(i32 %161, i32* %6)
  %163 = icmp slt i64 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %159
  %165 = call i64 (...) @caph_limit_stdout()
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %164
  %168 = call i64 (...) @caph_limit_stderr()
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %167, %164, %159
  %171 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %172

172:                                              ; preds = %170, %167
  %173 = call i64 (...) @caph_enter()
  %174 = icmp slt i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %177

177:                                              ; preds = %175, %172
  %178 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @PROT_READ, align 4
  %181 = load i32, i32* @MAP_SHARED, align 4
  %182 = load i32, i32* %23, align 4
  %183 = call i8* @mmap(i32* null, i32 %179, i32 %180, i32 %181, i32 %182, i32 0)
  store i8* %183, i8** %19, align 8
  %184 = load i8*, i8** %19, align 8
  %185 = load i8*, i8** @MAP_FAILED, align 8
  %186 = icmp eq i8* %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %177
  %188 = call i32 (i32, i8*, ...) @err(i32 1, i8* null)
  br label %189

189:                                              ; preds = %187, %177
  %190 = load i8*, i8** %19, align 8
  %191 = load i8, i8* %190, align 1
  %192 = call i32 @IS_ELF(i8 signext %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %203, label %194

194:                                              ; preds = %189
  %195 = load i32, i32* %18, align 4
  %196 = load i32, i32* @ED_IS_ELF, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %194
  %200 = call i32 @exit(i32 1) #3
  unreachable

201:                                              ; preds = %194
  %202 = call i32 @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %211

203:                                              ; preds = %189
  %204 = load i32, i32* %18, align 4
  %205 = load i32, i32* @ED_IS_ELF, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %203
  %209 = call i32 @exit(i32 0) #3
  unreachable

210:                                              ; preds = %203
  br label %211

211:                                              ; preds = %210, %201
  %212 = load i8*, i8** %19, align 8
  %213 = load i8*, i8** %19, align 8
  %214 = load i32, i32* @E_PHOFF, align 4
  %215 = call i32 @elf_get_off(i8* %212, i8* %213, i32 %214)
  store i32 %215, i32* %7, align 4
  %216 = load i8*, i8** %19, align 8
  %217 = load i8*, i8** %19, align 8
  %218 = load i32, i32* @E_SHOFF, align 4
  %219 = call i32 @elf_get_off(i8* %216, i8* %217, i32 %218)
  store i32 %219, i32* %8, align 4
  %220 = load i8*, i8** %19, align 8
  %221 = load i8*, i8** %19, align 8
  %222 = load i32, i32* @E_PHENTSIZE, align 4
  %223 = call i32 @elf_get_quarter(i8* %220, i8* %221, i32 %222)
  store i32 %223, i32* %9, align 4
  %224 = load i8*, i8** %19, align 8
  %225 = load i8*, i8** %19, align 8
  %226 = load i32, i32* @E_PHNUM, align 4
  %227 = call i32 @elf_get_quarter(i8* %224, i8* %225, i32 %226)
  store i32 %227, i32* %10, align 4
  %228 = load i8*, i8** %19, align 8
  %229 = load i8*, i8** %19, align 8
  %230 = load i32, i32* @E_SHENTSIZE, align 4
  %231 = call i32 @elf_get_quarter(i8* %228, i8* %229, i32 %230)
  store i32 %231, i32* %11, align 4
  %232 = load i8*, i8** %19, align 8
  %233 = load i32, i32* %7, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %232, i64 %234
  store i8* %235, i8** %20, align 8
  %236 = load i32, i32* %8, align 4
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %262

238:                                              ; preds = %211
  %239 = load i8*, i8** %19, align 8
  %240 = load i32, i32* %8, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %239, i64 %241
  store i8* %242, i8** %21, align 8
  %243 = load i8*, i8** %19, align 8
  %244 = load i8*, i8** %21, align 8
  %245 = call i32 @elf_get_shnum(i8* %243, i8* %244)
  store i32 %245, i32* %12, align 4
  %246 = load i8*, i8** %19, align 8
  %247 = load i8*, i8** %21, align 8
  %248 = call i32 @elf_get_shstrndx(i8* %246, i8* %247)
  store i32 %248, i32* %13, align 4
  %249 = load i8*, i8** %19, align 8
  %250 = load i8*, i8** %21, align 8
  %251 = load i32, i32* %13, align 4
  %252 = load i32, i32* %11, align 4
  %253 = mul nsw i32 %251, %252
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8, i8* %250, i64 %254
  %256 = load i32, i32* @SH_OFFSET, align 4
  %257 = call i32 @elf_get_off(i8* %249, i8* %255, i32 %256)
  store i32 %257, i32* %14, align 4
  %258 = load i8*, i8** %19, align 8
  %259 = load i32, i32* %14, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %258, i64 %260
  store i8* %261, i8** @shstrtab, align 8
  br label %263

262:                                              ; preds = %211
  store i8* null, i8** %21, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i8* null, i8** @shstrtab, align 8
  br label %263

263:                                              ; preds = %262, %238
  store i32 0, i32* %25, align 4
  br label %264

264:                                              ; preds = %311, %263
  %265 = load i32, i32* %25, align 4
  %266 = load i32, i32* %12, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %314

268:                                              ; preds = %264
  %269 = load i8*, i8** %19, align 8
  %270 = load i8*, i8** %21, align 8
  %271 = load i32, i32* %25, align 4
  %272 = load i32, i32* %11, align 4
  %273 = mul nsw i32 %271, %272
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %270, i64 %274
  %276 = load i32, i32* @SH_NAME, align 4
  %277 = call i32 @elf_get_word(i8* %269, i8* %275, i32 %276)
  store i32 %277, i32* %15, align 4
  %278 = load i8*, i8** %19, align 8
  %279 = load i8*, i8** %21, align 8
  %280 = load i32, i32* %25, align 4
  %281 = load i32, i32* %11, align 4
  %282 = mul nsw i32 %280, %281
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i8, i8* %279, i64 %283
  %285 = load i32, i32* @SH_OFFSET, align 4
  %286 = call i32 @elf_get_off(i8* %278, i8* %284, i32 %285)
  store i32 %286, i32* %14, align 4
  %287 = load i8*, i8** @shstrtab, align 8
  %288 = load i32, i32* %15, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8, i8* %287, i64 %289
  %291 = call i64 @strcmp(i8* %290, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %268
  %294 = load i8*, i8** %19, align 8
  %295 = load i32, i32* %14, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8, i8* %294, i64 %296
  store i8* %297, i8** @strtab, align 8
  br label %298

298:                                              ; preds = %293, %268
  %299 = load i8*, i8** @shstrtab, align 8
  %300 = load i32, i32* %15, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %299, i64 %301
  %303 = call i64 @strcmp(i8* %302, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %305, label %310

305:                                              ; preds = %298
  %306 = load i8*, i8** %19, align 8
  %307 = load i32, i32* %14, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8, i8* %306, i64 %308
  store i8* %309, i8** @dynstr, align 8
  br label %310

310:                                              ; preds = %305, %298
  br label %311

311:                                              ; preds = %310
  %312 = load i32, i32* %25, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %25, align 4
  br label %264

314:                                              ; preds = %264
  %315 = load i32, i32* %18, align 4
  %316 = load i32, i32* @ED_EHDR, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %314
  %320 = load i8*, i8** %19, align 8
  %321 = load i8*, i8** %21, align 8
  %322 = call i32 @elf_print_ehdr(i8* %320, i8* %321)
  br label %323

323:                                              ; preds = %319, %314
  %324 = load i32, i32* %18, align 4
  %325 = load i32, i32* @ED_PHDR, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %323
  %329 = load i8*, i8** %19, align 8
  %330 = load i8*, i8** %20, align 8
  %331 = call i32 @elf_print_phdr(i8* %329, i8* %330)
  br label %332

332:                                              ; preds = %328, %323
  %333 = load i32, i32* %18, align 4
  %334 = load i32, i32* @ED_SHDR, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %341

337:                                              ; preds = %332
  %338 = load i8*, i8** %19, align 8
  %339 = load i8*, i8** %21, align 8
  %340 = call i32 @elf_print_shdr(i8* %338, i8* %339)
  br label %341

341:                                              ; preds = %337, %332
  store i32 0, i32* %25, align 4
  br label %342

342:                                              ; preds = %370, %341
  %343 = load i32, i32* %25, align 4
  %344 = load i32, i32* %10, align 4
  %345 = icmp slt i32 %343, %344
  br i1 %345, label %346, label %373

346:                                              ; preds = %342
  %347 = load i8*, i8** %20, align 8
  %348 = load i32, i32* %25, align 4
  %349 = load i32, i32* %9, align 4
  %350 = mul nsw i32 %348, %349
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i8, i8* %347, i64 %351
  store i8* %352, i8** %22, align 8
  %353 = load i8*, i8** %19, align 8
  %354 = load i8*, i8** %22, align 8
  %355 = load i32, i32* @P_TYPE, align 4
  %356 = call i32 @elf_get_word(i8* %353, i8* %354, i32 %355)
  store i32 %356, i32* %16, align 4
  %357 = load i32, i32* %16, align 4
  switch i32 %357, label %369 [
    i32 145, label %358
    i32 142, label %368
    i32 144, label %368
    i32 146, label %368
    i32 143, label %368
    i32 140, label %368
    i32 141, label %368
  ]

358:                                              ; preds = %346
  %359 = load i32, i32* %18, align 4
  %360 = load i32, i32* @ED_INTERP, align 4
  %361 = and i32 %359, %360
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %367

363:                                              ; preds = %358
  %364 = load i8*, i8** %19, align 8
  %365 = load i8*, i8** %22, align 8
  %366 = call i32 @elf_print_interp(i8* %364, i8* %365)
  br label %367

367:                                              ; preds = %363, %358
  br label %369

368:                                              ; preds = %346, %346, %346, %346, %346, %346
  br label %369

369:                                              ; preds = %346, %368, %367
  br label %370

370:                                              ; preds = %369
  %371 = load i32, i32* %25, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %25, align 4
  br label %342

373:                                              ; preds = %342
  store i32 0, i32* %25, align 4
  br label %374

374:                                              ; preds = %496, %373
  %375 = load i32, i32* %25, align 4
  %376 = load i32, i32* %12, align 4
  %377 = icmp slt i32 %375, %376
  br i1 %377, label %378, label %499

378:                                              ; preds = %374
  %379 = load i8*, i8** %21, align 8
  %380 = load i32, i32* %25, align 4
  %381 = load i32, i32* %11, align 4
  %382 = mul nsw i32 %380, %381
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i8, i8* %379, i64 %383
  store i8* %384, i8** %22, align 8
  %385 = load i8*, i8** %19, align 8
  %386 = load i8*, i8** %22, align 8
  %387 = load i32, i32* @SH_TYPE, align 4
  %388 = call i32 @elf_get_word(i8* %385, i8* %386, i32 %387)
  store i32 %388, i32* %16, align 4
  %389 = load i32, i32* %16, align 4
  switch i32 %389, label %495 [
    i32 128, label %390
    i32 139, label %401
    i32 131, label %411
    i32 132, label %421
    i32 135, label %431
    i32 138, label %452
    i32 133, label %463
    i32 137, label %484
    i32 134, label %494
    i32 129, label %494
    i32 136, label %494
    i32 130, label %494
  ]

390:                                              ; preds = %378
  %391 = load i32, i32* %18, align 4
  %392 = load i32, i32* @ED_SYMTAB, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %400

395:                                              ; preds = %390
  %396 = load i8*, i8** %19, align 8
  %397 = load i8*, i8** %22, align 8
  %398 = load i8*, i8** @strtab, align 8
  %399 = call i32 @elf_print_symtab(i8* %396, i8* %397, i8* %398)
  br label %400

400:                                              ; preds = %395, %390
  br label %495

401:                                              ; preds = %378
  %402 = load i32, i32* %18, align 4
  %403 = load i32, i32* @ED_DYN, align 4
  %404 = and i32 %402, %403
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %410

406:                                              ; preds = %401
  %407 = load i8*, i8** %19, align 8
  %408 = load i8*, i8** %22, align 8
  %409 = call i32 @elf_print_dynamic(i8* %407, i8* %408)
  br label %410

410:                                              ; preds = %406, %401
  br label %495

411:                                              ; preds = %378
  %412 = load i32, i32* %18, align 4
  %413 = load i32, i32* @ED_REL, align 4
  %414 = and i32 %412, %413
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %420

416:                                              ; preds = %411
  %417 = load i8*, i8** %19, align 8
  %418 = load i8*, i8** %22, align 8
  %419 = call i32 @elf_print_rela(i8* %417, i8* %418)
  br label %420

420:                                              ; preds = %416, %411
  br label %495

421:                                              ; preds = %378
  %422 = load i32, i32* %18, align 4
  %423 = load i32, i32* @ED_REL, align 4
  %424 = and i32 %422, %423
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %430

426:                                              ; preds = %421
  %427 = load i8*, i8** %19, align 8
  %428 = load i8*, i8** %22, align 8
  %429 = call i32 @elf_print_rel(i8* %427, i8* %428)
  br label %430

430:                                              ; preds = %426, %421
  br label %495

431:                                              ; preds = %378
  %432 = load i8*, i8** %19, align 8
  %433 = load i8*, i8** %22, align 8
  %434 = load i32, i32* @SH_NAME, align 4
  %435 = call i32 @elf_get_word(i8* %432, i8* %433, i32 %434)
  store i32 %435, i32* %15, align 4
  %436 = load i32, i32* %18, align 4
  %437 = load i32, i32* @ED_NOTE, align 4
  %438 = and i32 %436, %437
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %451

440:                                              ; preds = %431
  %441 = load i8*, i8** @shstrtab, align 8
  %442 = load i32, i32* %15, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i8, i8* %441, i64 %443
  %445 = call i64 @strcmp(i8* %444, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %446 = icmp eq i64 %445, 0
  br i1 %446, label %447, label %451

447:                                              ; preds = %440
  %448 = load i8*, i8** %19, align 8
  %449 = load i8*, i8** %22, align 8
  %450 = call i32 @elf_print_note(i8* %448, i8* %449)
  br label %451

451:                                              ; preds = %447, %440, %431
  br label %495

452:                                              ; preds = %378
  %453 = load i32, i32* %18, align 4
  %454 = load i32, i32* @ED_SYMTAB, align 4
  %455 = and i32 %453, %454
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %462

457:                                              ; preds = %452
  %458 = load i8*, i8** %19, align 8
  %459 = load i8*, i8** %22, align 8
  %460 = load i8*, i8** @dynstr, align 8
  %461 = call i32 @elf_print_symtab(i8* %458, i8* %459, i8* %460)
  br label %462

462:                                              ; preds = %457, %452
  br label %495

463:                                              ; preds = %378
  %464 = load i8*, i8** %19, align 8
  %465 = load i8*, i8** %22, align 8
  %466 = load i32, i32* @SH_NAME, align 4
  %467 = call i32 @elf_get_word(i8* %464, i8* %465, i32 %466)
  store i32 %467, i32* %15, align 4
  %468 = load i32, i32* %18, align 4
  %469 = load i32, i32* @ED_GOT, align 4
  %470 = and i32 %468, %469
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %483

472:                                              ; preds = %463
  %473 = load i8*, i8** @shstrtab, align 8
  %474 = load i32, i32* %15, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i8, i8* %473, i64 %475
  %477 = call i64 @strcmp(i8* %476, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %478 = icmp eq i64 %477, 0
  br i1 %478, label %479, label %483

479:                                              ; preds = %472
  %480 = load i8*, i8** %19, align 8
  %481 = load i8*, i8** %22, align 8
  %482 = call i32 @elf_print_got(i8* %480, i8* %481)
  br label %483

483:                                              ; preds = %479, %472, %463
  br label %495

484:                                              ; preds = %378
  %485 = load i32, i32* %18, align 4
  %486 = load i32, i32* @ED_HASH, align 4
  %487 = and i32 %485, %486
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %493

489:                                              ; preds = %484
  %490 = load i8*, i8** %19, align 8
  %491 = load i8*, i8** %22, align 8
  %492 = call i32 @elf_print_hash(i8* %490, i8* %491)
  br label %493

493:                                              ; preds = %489, %484
  br label %495

494:                                              ; preds = %378, %378, %378, %378
  br label %495

495:                                              ; preds = %378, %494, %493, %483, %462, %451, %430, %420, %410, %400
  br label %496

496:                                              ; preds = %495
  %497 = load i32, i32* %25, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %25, align 4
  br label %374

499:                                              ; preds = %374
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @cap_rights_init(i32*, ...) #1

declare dso_local i64 @caph_rights_limit(i32, i32*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @caph_limit_stdout(...) #1

declare dso_local i64 @caph_limit_stderr(...) #1

declare dso_local i64 @caph_enter(...) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IS_ELF(i8 signext) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @elf_get_off(i8*, i8*, i32) #1

declare dso_local i32 @elf_get_quarter(i8*, i8*, i32) #1

declare dso_local i32 @elf_get_shnum(i8*, i8*) #1

declare dso_local i32 @elf_get_shstrndx(i8*, i8*) #1

declare dso_local i32 @elf_get_word(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @elf_print_ehdr(i8*, i8*) #1

declare dso_local i32 @elf_print_phdr(i8*, i8*) #1

declare dso_local i32 @elf_print_shdr(i8*, i8*) #1

declare dso_local i32 @elf_print_interp(i8*, i8*) #1

declare dso_local i32 @elf_print_symtab(i8*, i8*, i8*) #1

declare dso_local i32 @elf_print_dynamic(i8*, i8*) #1

declare dso_local i32 @elf_print_rela(i8*, i8*) #1

declare dso_local i32 @elf_print_rel(i8*, i8*) #1

declare dso_local i32 @elf_print_note(i8*, i8*) #1

declare dso_local i32 @elf_print_got(i8*, i8*) #1

declare dso_local i32 @elf_print_hash(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
