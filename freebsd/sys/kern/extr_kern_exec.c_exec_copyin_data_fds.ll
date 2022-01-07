; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_exec_copyin_data_fds.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_exec_copyin_data_fds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.filedesc* }
%struct.filedesc = type { i32 }
%struct.image_args = type { i8*, i8*, i64, i8*, i32, i32 }

@ARG_MAX = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exec_copyin_data_fds(%struct.thread* %0, %struct.image_args* %1, i8* %2, i64 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.image_args*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.filedesc*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %8, align 8
  store %struct.image_args* %1, %struct.image_args** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load %struct.image_args*, %struct.image_args** %9, align 8
  %19 = call i32 @memset(%struct.image_args* %18, i8 signext 0, i32 40)
  %20 = load %struct.thread*, %struct.thread** %8, align 8
  %21 = getelementptr inbounds %struct.thread, %struct.thread* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.filedesc*, %struct.filedesc** %23, align 8
  store %struct.filedesc* %24, %struct.filedesc** %14, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @ARG_MAX, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %6
  %29 = load i64, i64* %13, align 8
  %30 = load %struct.filedesc*, %struct.filedesc** %14, align 8
  %31 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = icmp ugt i64 %29, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28, %6
  %37 = load i32, i32* @E2BIG, align 4
  store i32 %37, i32* %7, align 4
  br label %152

38:                                               ; preds = %28
  %39 = load %struct.image_args*, %struct.image_args** %9, align 8
  %40 = call i32 @exec_alloc_args(%struct.image_args* %39)
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %17, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %17, align 4
  store i32 %44, i32* %7, align 4
  br label %152

45:                                               ; preds = %38
  %46 = load %struct.image_args*, %struct.image_args** %9, align 8
  %47 = getelementptr inbounds %struct.image_args, %struct.image_args* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.image_args*, %struct.image_args** %9, align 8
  %50 = getelementptr inbounds %struct.image_args, %struct.image_args* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load i64, i64* @ARG_MAX, align 8
  %52 = load %struct.image_args*, %struct.image_args** %9, align 8
  %53 = getelementptr inbounds %struct.image_args, %struct.image_args* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp ugt i64 %54, 0
  br i1 %55, label %56, label %111

56:                                               ; preds = %45
  %57 = load i8*, i8** %10, align 8
  %58 = bitcast i8* %57 to i32*
  %59 = load %struct.image_args*, %struct.image_args** %9, align 8
  %60 = getelementptr inbounds %struct.image_args, %struct.image_args* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i32 (i32*, ...) @copyin(i32* %58, i8* %61, i64 %62)
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %148

67:                                               ; preds = %56
  %68 = load %struct.image_args*, %struct.image_args** %9, align 8
  %69 = getelementptr inbounds %struct.image_args, %struct.image_args* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i64, i64* %11, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8 0, i8* %72, align 1
  %73 = load %struct.image_args*, %struct.image_args** %9, align 8
  %74 = getelementptr inbounds %struct.image_args, %struct.image_args* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load %struct.image_args*, %struct.image_args** %9, align 8
  %80 = getelementptr inbounds %struct.image_args, %struct.image_args* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  %81 = load i64, i64* %11, align 8
  %82 = add i64 %81, 1
  %83 = load %struct.image_args*, %struct.image_args** %9, align 8
  %84 = getelementptr inbounds %struct.image_args, %struct.image_args* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = sub i64 %85, %82
  store i64 %86, i64* %84, align 8
  %87 = load %struct.image_args*, %struct.image_args** %9, align 8
  %88 = getelementptr inbounds %struct.image_args, %struct.image_args* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %15, align 8
  br label %90

90:                                               ; preds = %107, %67
  %91 = load i8*, i8** %15, align 8
  %92 = load %struct.image_args*, %struct.image_args** %9, align 8
  %93 = getelementptr inbounds %struct.image_args, %struct.image_args* %92, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ult i8* %91, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %90
  %97 = load i8*, i8** %15, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.image_args*, %struct.image_args** %9, align 8
  %103 = getelementptr inbounds %struct.image_args, %struct.image_args* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %101, %96
  br label %107

107:                                              ; preds = %106
  %108 = load i8*, i8** %15, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %15, align 8
  br label %90

110:                                              ; preds = %90
  br label %117

111:                                              ; preds = %45
  %112 = load %struct.image_args*, %struct.image_args** %9, align 8
  %113 = getelementptr inbounds %struct.image_args, %struct.image_args* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.image_args*, %struct.image_args** %9, align 8
  %116 = getelementptr inbounds %struct.image_args, %struct.image_args* %115, i32 0, i32 3
  store i8* %114, i8** %116, align 8
  br label %117

117:                                              ; preds = %111, %110
  %118 = load i64, i64* %13, align 8
  %119 = mul i64 %118, 4
  %120 = load i32, i32* @M_TEMP, align 4
  %121 = load i32, i32* @M_WAITOK, align 4
  %122 = call i32* @malloc(i64 %119, i32 %120, i32 %121)
  store i32* %122, i32** %16, align 8
  %123 = load i32*, i32** %12, align 8
  %124 = load i32*, i32** %16, align 8
  %125 = load i64, i64* %13, align 8
  %126 = mul i64 %125, 4
  %127 = call i32 (i32*, ...) @copyin(i32* %123, i32* %124, i64 %126)
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %17, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %117
  %131 = load i32*, i32** %16, align 8
  %132 = load i32, i32* @M_TEMP, align 4
  %133 = call i32 @free(i32* %131, i32 %132)
  br label %148

134:                                              ; preds = %117
  %135 = load %struct.filedesc*, %struct.filedesc** %14, align 8
  %136 = load i32*, i32** %16, align 8
  %137 = load i64, i64* %13, align 8
  %138 = load %struct.image_args*, %struct.image_args** %9, align 8
  %139 = getelementptr inbounds %struct.image_args, %struct.image_args* %138, i32 0, i32 4
  %140 = call i32 @fdcopy_remapped(%struct.filedesc* %135, i32* %136, i64 %137, i32* %139)
  store i32 %140, i32* %17, align 4
  %141 = load i32*, i32** %16, align 8
  %142 = load i32, i32* @M_TEMP, align 4
  %143 = call i32 @free(i32* %141, i32 %142)
  %144 = load i32, i32* %17, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %134
  br label %148

147:                                              ; preds = %134
  store i32 0, i32* %7, align 4
  br label %152

148:                                              ; preds = %146, %130, %66
  %149 = load %struct.image_args*, %struct.image_args** %9, align 8
  %150 = call i32 @exec_free_args(%struct.image_args* %149)
  %151 = load i32, i32* %17, align 4
  store i32 %151, i32* %7, align 4
  br label %152

152:                                              ; preds = %148, %147, %43, %36
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local i32 @memset(%struct.image_args*, i8 signext, i32) #1

declare dso_local i32 @exec_alloc_args(%struct.image_args*) #1

declare dso_local i32 @copyin(i32*, ...) #1

declare dso_local i32* @malloc(i64, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @fdcopy_remapped(%struct.filedesc*, i32*, i64, i32*) #1

declare dso_local i32 @exec_free_args(%struct.image_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
