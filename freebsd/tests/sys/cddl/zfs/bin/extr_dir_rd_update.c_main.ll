; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/bin/extr_dir_rd_update.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/bin/extr_dir_rd_update.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@main.op_num = internal constant i32 5, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Usage: %s <mount point>\0A\00", align 1
@dirpath = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"TMP_DIR\00", align 1
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"%s: mkdir(<%s>, 0777) failed: errno (decimal)=%d\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_SYNC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"%s: open(<%s>, O_RDONLY|O_SYNC) failed: errno (decimal)=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"readdir failed\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"chown failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [16 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = call i32 @exit(i32 -1) #3
  unreachable

26:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %35, %26
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 256
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i8*, i8** @dirpath, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8 0, i8* %34, align 1
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %27

38:                                               ; preds = %27
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %6, align 8
  %42 = load i8*, i8** @dirpath, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @strcpy(i8* %43, i8* %44)
  %46 = load i8*, i8** @dirpath, align 8
  %47 = load i8*, i8** @dirpath, align 8
  %48 = call i64 @strlen(i8* %47)
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = call i32 @strcat(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i8*, i8** @dirpath, align 8
  %52 = call i32 @mkdir(i8* %51, i32 511)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %38
  %56 = load i64, i64* @errno, align 8
  %57 = load i64, i64* @EEXIST, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** @dirpath, align 8
  %64 = load i64, i64* @errno, align 8
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %62, i8* %63, i64 %64)
  %66 = call i32 @exit(i32 -1) #3
  unreachable

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67, %38
  %69 = load i8*, i8** @dirpath, align 8
  %70 = load i32, i32* @O_RDONLY, align 4
  %71 = load i32, i32* @O_SYNC, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @open(i8* %69, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %68
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i8*, i8** @dirpath, align 8
  %81 = load i64, i64* @errno, align 8
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i8* %79, i8* %80, i64 %81)
  %83 = call i32 @exit(i32 -1) #3
  unreachable

84:                                               ; preds = %68
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @close(i32 %85)
  br label %87

87:                                               ; preds = %84
  %88 = call i64 (...) @fork()
  store i64 %88, i64* %10, align 8
  %89 = load i64, i64* %10, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %113

91:                                               ; preds = %87
  %92 = load i8*, i8** @dirpath, align 8
  %93 = load i32, i32* @O_RDONLY, align 4
  %94 = load i32, i32* @O_SYNC, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @open(i8* %92, i32 %95)
  store i32 %96, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %97

97:                                               ; preds = %109, %91
  %98 = load i32, i32* %14, align 4
  %99 = icmp slt i32 %98, 5
  br i1 %99, label %100, label %112

100:                                              ; preds = %97
  %101 = call i32 @sleep(i32 1)
  %102 = load i32, i32* %11, align 4
  %103 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %104 = call i32 @read(i32 %102, i8* %103, i32 16)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %100
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %14, align 4
  br label %97

112:                                              ; preds = %97
  br label %136

113:                                              ; preds = %87
  %114 = load i64, i64* %10, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %135

116:                                              ; preds = %113
  %117 = load i8*, i8** @dirpath, align 8
  %118 = load i32, i32* @O_RDONLY, align 4
  %119 = call i32 @open(i8* %117, i32 %118)
  store i32 %119, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %120

120:                                              ; preds = %131, %116
  %121 = load i32, i32* %17, align 4
  %122 = icmp slt i32 %121, 5
  br i1 %122, label %123, label %134

123:                                              ; preds = %120
  %124 = call i32 @sleep(i32 1)
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @fchown(i32 %125, i32 0, i32 0)
  store i32 %126, i32* %16, align 4
  %127 = load i32, i32* %16, align 4
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %123
  %132 = load i32, i32* %17, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %17, align 4
  br label %120

134:                                              ; preds = %120
  br label %135

135:                                              ; preds = %134, %113
  br label %136

136:                                              ; preds = %135, %112
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @fchown(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
