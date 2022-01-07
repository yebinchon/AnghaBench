; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ar/extr_write.c_create_symtab_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ar/extr_write.c_create_symtab_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdar = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"elf_memory() failed: %s\00", align 1
@ELF_K_ELF = common dso_local global i64 0, align 8
@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"elf_getshstrndx failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"elf_getshdr failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"elf_strptr failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c".strtab\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"elf_nextscn failed: %s\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"can't find .strtab section\00", align 1
@SHT_SYMTAB = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"gelf_getsym failed: %s\00", align 1
@STB_GLOBAL = common dso_local global i64 0, align 8
@STB_WEAK = common dso_local global i64 0, align 8
@SHN_UNDEF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsdar*, i8*, i64)* @create_symtab_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_symtab_entry(%struct.bsdar* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.bsdar*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.bsdar* %0, %struct.bsdar** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32* @elf_memory(i8* %19, i64 %20)
  store i32* %21, i32** %7, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %25 = call i32 @elf_errmsg(i32 -1)
  %26 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %24, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %205

27:                                               ; preds = %3
  %28 = load i32*, i32** %7, align 8
  %29 = call i64 @elf_kind(i32* %28)
  %30 = load i64, i64* @ELF_K_ELF, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @elf_end(i32* %33)
  br label %205

35:                                               ; preds = %27
  %36 = load i32*, i32** %7, align 8
  %37 = call i64 @elf_getshstrndx(i32* %36, i64* %14)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %41 = load i32, i32* @EX_SOFTWARE, align 4
  %42 = call i32 @elf_errmsg(i32 -1)
  %43 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %40, i32 %41, i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @elf_end(i32* %44)
  br label %205

46:                                               ; preds = %35
  store i32 -1, i32* %16, align 4
  store i32* null, i32** %8, align 8
  br label %47

47:                                               ; preds = %79, %68, %56, %46
  %48 = load i32*, i32** %7, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i32* @elf_nextscn(i32* %48, i32* %49)
  store i32* %50, i32** %8, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %80

52:                                               ; preds = %47
  %53 = load i32*, i32** %8, align 8
  %54 = call %struct.TYPE_12__* @gelf_getshdr(i32* %53, %struct.TYPE_12__* %9)
  %55 = icmp ne %struct.TYPE_12__* %54, %9
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %58 = call i32 @elf_errmsg(i32 -1)
  %59 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %57, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %47

60:                                               ; preds = %52
  %61 = load i32*, i32** %7, align 8
  %62 = load i64, i64* %14, align 8
  %63 = trunc i64 %62 to i32
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @elf_strptr(i32* %61, i32 %63, i32 %65)
  store i8* %66, i8** %12, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %70 = call i32 @elf_errmsg(i32 -1)
  %71 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %69, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  br label %47

72:                                               ; preds = %60
  %73 = load i8*, i8** %12, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @elf_ndxscn(i32* %77)
  store i32 %78, i32* %16, align 4
  br label %80

79:                                               ; preds = %72
  br label %47

80:                                               ; preds = %76, %47
  %81 = call i32 (...) @elf_errno()
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @elf_errmsg(i32 %86)
  %88 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %85, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %84, %80
  %90 = load i32, i32* %16, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %94 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %93, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @elf_end(i32* %95)
  br label %205

97:                                               ; preds = %89
  store i32* null, i32** %8, align 8
  br label %98

98:                                               ; preds = %191, %117, %107, %97
  %99 = load i32*, i32** %7, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = call i32* @elf_nextscn(i32* %99, i32* %100)
  store i32* %101, i32** %8, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %192

103:                                              ; preds = %98
  %104 = load i32*, i32** %8, align 8
  %105 = call %struct.TYPE_12__* @gelf_getshdr(i32* %104, %struct.TYPE_12__* %9)
  %106 = icmp ne %struct.TYPE_12__* %105, %9
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %109 = load i32, i32* @EX_SOFTWARE, align 4
  %110 = call i32 @elf_errmsg(i32 -1)
  %111 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %108, i32 %109, i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  br label %98

112:                                              ; preds = %103
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SHT_SYMTAB, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %98

118:                                              ; preds = %112
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  store i64 0, i64* %13, align 8
  br label %119

119:                                              ; preds = %190, %118
  %120 = load i64, i64* %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ult i64 %120, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i32*, i32** %8, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %127 = call %struct.TYPE_13__* @elf_getdata(i32* %125, %struct.TYPE_13__* %126)
  store %struct.TYPE_13__* %127, %struct.TYPE_13__** %11, align 8
  %128 = icmp ne %struct.TYPE_13__* %127, null
  br label %129

129:                                              ; preds = %124, %119
  %130 = phi i1 [ false, %119 ], [ %128, %124 ]
  br i1 %130, label %131, label %191

131:                                              ; preds = %129
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = sdiv i32 %134, %136
  store i32 %137, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %138

138:                                              ; preds = %187, %131
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* %17, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %190

142:                                              ; preds = %138
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %144 = load i32, i32* %18, align 4
  %145 = call %struct.TYPE_11__* @gelf_getsym(%struct.TYPE_13__* %143, i32 %144, %struct.TYPE_11__* %10)
  %146 = icmp ne %struct.TYPE_11__* %145, %10
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %149 = load i32, i32* @EX_SOFTWARE, align 4
  %150 = call i32 @elf_errmsg(i32 -1)
  %151 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %148, i32 %149, i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %150)
  br label %187

152:                                              ; preds = %142
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @GELF_ST_BIND(i32 %154)
  %156 = load i64, i64* @STB_GLOBAL, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @GELF_ST_BIND(i32 %160)
  %162 = load i64, i64* @STB_WEAK, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %187

165:                                              ; preds = %158, %152
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @SHN_UNDEF, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %187

171:                                              ; preds = %165
  %172 = load i32*, i32** %7, align 8
  %173 = load i32, i32* %16, align 4
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = call i8* @elf_strptr(i32* %172, i32 %173, i32 %175)
  store i8* %176, i8** %12, align 8
  %177 = icmp eq i8* %176, null
  br i1 %177, label %178, label %183

178:                                              ; preds = %171
  %179 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %180 = load i32, i32* @EX_SOFTWARE, align 4
  %181 = call i32 @elf_errmsg(i32 -1)
  %182 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %179, i32 %180, i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %181)
  br label %187

183:                                              ; preds = %171
  %184 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %185 = load i8*, i8** %12, align 8
  %186 = call i32 @add_to_ar_sym_table(%struct.bsdar* %184, i8* %185)
  br label %187

187:                                              ; preds = %183, %178, %170, %164, %147
  %188 = load i32, i32* %18, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %18, align 4
  br label %138

190:                                              ; preds = %138
  br label %119

191:                                              ; preds = %129
  br label %98

192:                                              ; preds = %98
  %193 = call i32 (...) @elf_errno()
  store i32 %193, i32* %15, align 4
  %194 = load i32, i32* %15, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %192
  %197 = load %struct.bsdar*, %struct.bsdar** %4, align 8
  %198 = load i32, i32* @EX_SOFTWARE, align 4
  %199 = load i32, i32* %15, align 4
  %200 = call i32 @elf_errmsg(i32 %199)
  %201 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %197, i32 %198, i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %200)
  br label %202

202:                                              ; preds = %196, %192
  %203 = load i32*, i32** %7, align 8
  %204 = call i32 @elf_end(i32* %203)
  br label %205

205:                                              ; preds = %202, %92, %39, %32, %23
  ret void
}

declare dso_local i32* @elf_memory(i8*, i64) #1

declare dso_local i32 @bsdar_warnc(%struct.bsdar*, i32, i8*, ...) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i64 @elf_kind(i32*) #1

declare dso_local i32 @elf_end(i32*) #1

declare dso_local i64 @elf_getshstrndx(i32*, i64*) #1

declare dso_local i32* @elf_nextscn(i32*, i32*) #1

declare dso_local %struct.TYPE_12__* @gelf_getshdr(i32*, %struct.TYPE_12__*) #1

declare dso_local i8* @elf_strptr(i32*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @elf_ndxscn(i32*) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_13__* @elf_getdata(i32*, %struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_11__* @gelf_getsym(%struct.TYPE_13__*, i32, %struct.TYPE_11__*) #1

declare dso_local i64 @GELF_ST_BIND(i32) #1

declare dso_local i32 @add_to_ar_sym_table(%struct.bsdar*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
