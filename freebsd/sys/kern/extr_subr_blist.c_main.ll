; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_blist.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_blist.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.sbuf = type { i32 }

@BLIST_META_RADIX = common dso_local global i32 0, align 4
@BLIST_BMAP_RADIX = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Bad option: %s\0A\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"%lld/%lld/%lld> \00", align 1
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"?\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"    R=%08llx, c=%08d\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%llx %d\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"    n=%jd\0A\00", align 1
@.str.9 = private unnamed_addr constant [144 x i8] c"p          -print\0As          -stats\0Aa %d %d    -allocate\0Af %x %d    -free\0Al %x %d    -fill\0Ar %d       -resize\0Ah/?        -help\0Aq          -quit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.sbuf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [1024 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* @BLIST_META_RADIX, align 4
  %17 = load i32, i32* @BLIST_BMAP_RADIX, align 4
  %18 = mul nsw i32 %16, %17
  store i32 %18, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %19

19:                                               ; preds = %44, %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 45
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @strtol(i8* %34, i32* null, i32 0)
  store i32 %35, i32* %6, align 4
  br label %44

36:                                               ; preds = %23
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  store i8* %38, i8** %10, align 8
  %39 = load i32, i32* @stderr, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 -2
  %42 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = call i32 @exit(i32 1) #3
  unreachable

44:                                               ; preds = %33
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %19

47:                                               ; preds = %19
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @M_WAITOK, align 4
  %50 = call %struct.TYPE_10__* @blist_create(i32 %48, i32 %49)
  store %struct.TYPE_10__* %50, %struct.TYPE_10__** %8, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @blist_free(%struct.TYPE_10__* %51, i64 0, i32 %52)
  br label %54

54:                                               ; preds = %154, %47
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %56 = call i64 @blist_avail(%struct.TYPE_10__* %55)
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %56, i64 %58, i64 %61)
  %63 = load i32, i32* @stdout, align 4
  %64 = call i32 @fflush(i32 %63)
  %65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %66 = load i32, i32* @stdin, align 4
  %67 = call i32* @fgets(i8* %65, i32 1024, i32 %66)
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %54
  br label %155

70:                                               ; preds = %54
  %71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %72 = load i8, i8* %71, align 16
  %73 = sext i8 %72 to i32
  switch i32 %73, label %146 [
    i32 114, label %74
    i32 112, label %86
    i32 115, label %89
    i32 97, label %101
    i32 102, label %116
    i32 108, label %129
    i32 63, label %143
    i32 104, label %143
    i32 113, label %145
  ]

74:                                               ; preds = %70
  %75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = call i32 (i8*, i8*, ...) @sscanf(i8* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %13)
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @M_WAITOK, align 4
  %82 = call i32 @blist_resize(%struct.TYPE_10__** %8, i32 %80, i32 1, i32 %81)
  br label %85

83:                                               ; preds = %74
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %79
  br label %86

86:                                               ; preds = %70, %85
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %88 = call i32 @blist_print(%struct.TYPE_10__* %87)
  br label %148

89:                                               ; preds = %70
  %90 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %90, %struct.sbuf** %9, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %92 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %93 = call i32 @blist_stats(%struct.TYPE_10__* %91, %struct.sbuf* %92)
  %94 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %95 = call i32 @sbuf_finish(%struct.sbuf* %94)
  %96 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %97 = call i8* @sbuf_data(%struct.sbuf* %96)
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %97)
  %99 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %100 = call i32 @sbuf_delete(%struct.sbuf* %99)
  br label %148

101:                                              ; preds = %70
  %102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = call i32 (i8*, i8*, ...) @sscanf(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* %13, i32* %14)
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %108 = load i32, i32* %14, align 4
  %109 = call i64 @blist_alloc(%struct.TYPE_10__* %107, i32* %13, i32 %108)
  store i64 %109, i64* %15, align 8
  %110 = load i64, i64* %15, align 8
  %111 = load i32, i32* %13, align 4
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i64 %110, i32 %111)
  br label %115

113:                                              ; preds = %101
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %106
  br label %148

116:                                              ; preds = %70
  %117 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = call i32 (i8*, i8*, ...) @sscanf(i8* %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i64* %12, i32* %13)
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @blist_free(%struct.TYPE_10__* %122, i64 %123, i32 %124)
  br label %128

126:                                              ; preds = %116
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %121
  br label %148

129:                                              ; preds = %70
  %130 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  %132 = call i32 (i8*, i8*, ...) @sscanf(i8* %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i64* %12, i32* %13)
  %133 = icmp eq i32 %132, 2
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %136 = load i64, i64* %12, align 8
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @blist_fill(%struct.TYPE_10__* %135, i64 %136, i32 %137)
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %138)
  br label %142

140:                                              ; preds = %129
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %134
  br label %148

143:                                              ; preds = %70, %70
  %144 = call i32 @puts(i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.9, i64 0, i64 0))
  br label %148

145:                                              ; preds = %70
  br label %148

146:                                              ; preds = %70
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %145, %143, %142, %128, %115, %89, %86
  %149 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %150 = load i8, i8* %149, align 16
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 113
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %155

154:                                              ; preds = %148
  br label %54

155:                                              ; preds = %153, %69
  ret i32 0
}

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_10__* @blist_create(i32, i32) #1

declare dso_local i32 @blist_free(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @blist_avail(%struct.TYPE_10__*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i32 @blist_resize(%struct.TYPE_10__**, i32, i32, i32) #1

declare dso_local i32 @blist_print(%struct.TYPE_10__*) #1

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #1

declare dso_local i32 @blist_stats(%struct.TYPE_10__*, %struct.sbuf*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i8* @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

declare dso_local i64 @blist_alloc(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @blist_fill(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
