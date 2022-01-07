; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_syscalls.c_print_syscall.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_syscalls.c_print_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trussinfo = type { i32, %struct.threadinfo* }
%struct.threadinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8**, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"%s(\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"<missing argument>\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\09\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_syscall(%struct.trussinfo* %0) #0 {
  %2 = alloca %struct.trussinfo*, align 8
  %3 = alloca %struct.threadinfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.trussinfo* %0, %struct.trussinfo** %2, align 8
  %9 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %10 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %9, i32 0, i32 1
  %11 = load %struct.threadinfo*, %struct.threadinfo** %10, align 8
  store %struct.threadinfo* %11, %struct.threadinfo** %3, align 8
  %12 = load %struct.threadinfo*, %struct.threadinfo** %3, align 8
  %13 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %4, align 8
  %18 = load %struct.threadinfo*, %struct.threadinfo** %3, align 8
  %19 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load %struct.threadinfo*, %struct.threadinfo** %3, align 8
  %23 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i8**, i8*** %24, align 8
  store i8** %25, i8*** %5, align 8
  %26 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %27 = call i32 @print_line_prefix(%struct.trussinfo* %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %29 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %86, %1
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %89

41:                                               ; preds = %37
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %50 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %7, align 4
  br label %71

62:                                               ; preds = %41
  %63 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %64 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %62, %48
  %72 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %73 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %8, align 4
  %77 = sub nsw i32 %76, 1
  %78 = icmp slt i32 %75, %77
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %81 = call i64 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %80)
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %71
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %37

89:                                               ; preds = %37
  %90 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %91 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i64 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %109, %89
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = sdiv i32 %100, 8
  %102 = sub nsw i32 6, %101
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %106 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i64 (i32, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %109

109:                                              ; preds = %104
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %98

112:                                              ; preds = %98
  ret void
}

declare dso_local i32 @print_line_prefix(%struct.trussinfo*) #1

declare dso_local i64 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
