; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_elf.c_elf_getnfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_elf.c_elf_getnfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.stat = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"cannot fstat %s\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"cannot mmap %s\00", align 1
@SHT_SYMTAB = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"%s has no symbol table\00", align 1
@nname = common dso_local global i64 0, align 8
@nl = common dso_local global %struct.TYPE_10__* null, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"insufficient memory for symbol table\00", align 1
@npe = common dso_local global %struct.TYPE_10__* null, align 8
@excludes = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elf_getnfile(i8* %0, i8*** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8***, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__, align 4
  %8 = alloca %struct.stat, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %4, align 8
  store i8*** %1, i8**** %5, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @O_RDONLY, align 4
  %21 = call i32 @open(i8* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %23, %2
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @read(i32 %27, %struct.TYPE_13__* %7, i32 8)
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 8
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = bitcast %struct.TYPE_13__* %7 to i64*
  %33 = load i64, i64* %32, align 4
  %34 = call i32 @IS_ELF(i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @close(i32 %37)
  store i32 -1, i32* %3, align 4
  br label %192

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @fstat(i32 %40, %struct.stat* %8)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %39
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PROT_READ, align 4
  %50 = load i32, i32* @MAP_SHARED, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i8* @mmap(i32 0, i32 %48, i32 %49, i32 %50, i32 %51, i32 0)
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** @MAP_FAILED, align 8
  %54 = icmp eq i8* %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %55, %46
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @close(i32 %59)
  %61 = load i8*, i8** %9, align 8
  store i8* %61, i8** %10, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = bitcast i8* %66 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %11, align 8
  store i32 1, i32* %17, align 4
  br label %68

68:                                               ; preds = %84, %58
  %69 = load i32, i32* %17, align 4
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %68
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %75 = load i32, i32* %17, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SHT_SYMTAB, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %87

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %17, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %17, align 4
  br label %68

87:                                               ; preds = %82, %68
  %88 = load i32, i32* %17, align 4
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i8*, i8** %4, align 8
  %94 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %92, %87
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %97 = load i32, i32* %17, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i64 %98
  store %struct.TYPE_12__* %99, %struct.TYPE_12__** %12, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i64 %103
  store %struct.TYPE_12__* %104, %struct.TYPE_12__** %13, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %105, i64 %109
  %111 = bitcast i8* %110 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %111, %struct.TYPE_11__** %15, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = sdiv i32 %114, %117
  store i32 %118, i32* %16, align 4
  %119 = load i8*, i8** %10, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %119, i64 %123
  store i8* %124, i8** %14, align 8
  store i64 0, i64* @nname, align 8
  store i32 1, i32* %17, align 4
  br label %125

125:                                              ; preds = %141, %95
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %16, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %144

129:                                              ; preds = %125
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i64 %132
  %134 = load i8*, i8** %14, align 8
  %135 = call i64 @wantsym(%struct.TYPE_11__* %133, i8* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %129
  %138 = load i64, i64* @nname, align 8
  %139 = add nsw i64 %138, 1
  store i64 %139, i64* @nname, align 8
  br label %140

140:                                              ; preds = %137, %129
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %17, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %17, align 4
  br label %125

144:                                              ; preds = %125
  %145 = load i64, i64* @nname, align 8
  %146 = add nsw i64 %145, 1
  %147 = call i64 @calloc(i64 %146, i32 16)
  %148 = inttoptr i64 %147 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %148, %struct.TYPE_10__** @nl, align 8
  %149 = icmp eq %struct.TYPE_10__* %148, null
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %144
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** @nl, align 8
  store %struct.TYPE_10__* %153, %struct.TYPE_10__** @npe, align 8
  store i32 1, i32* %17, align 4
  br label %154

154:                                              ; preds = %184, %152
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* %16, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %187

158:                                              ; preds = %154
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %160 = load i32, i32* %17, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i64 %161
  store %struct.TYPE_11__* %162, %struct.TYPE_11__** %18, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %164 = load i8*, i8** %14, align 8
  %165 = call i64 @wantsym(%struct.TYPE_11__* %163, i8* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %183

167:                                              ; preds = %158
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** @npe, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = load i8*, i8** %14, align 8
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %173, i64 %177
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** @npe, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  store i8* %178, i8** %180, align 8
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** @npe, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 1
  store %struct.TYPE_10__* %182, %struct.TYPE_10__** @npe, align 8
  br label %183

183:                                              ; preds = %167, %158
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %17, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %17, align 4
  br label %154

187:                                              ; preds = %154
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** @npe, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  store i32 -1, i32* %189, align 8
  %190 = load i8**, i8*** @excludes, align 8
  %191 = load i8***, i8**** %5, align 8
  store i8** %190, i8*** %191, align 8
  store i32 0, i32* %3, align 4
  br label %192

192:                                              ; preds = %187, %36
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @read(i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @IS_ELF(i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i8* @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @wantsym(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @calloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
