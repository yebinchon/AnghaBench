; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_share.c_gv_new_drive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_share.c_gv_new_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_drive = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gv_drive* @gv_new_drive(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.gv_drive*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.gv_drive*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  %12 = load i8*, i8** %11, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %2
  store %struct.gv_drive* null, %struct.gv_drive** %3, align 8
  br label %131

22:                                               ; preds = %14
  %23 = call %struct.gv_drive* (...) @gv_alloc_drive()
  store %struct.gv_drive* %23, %struct.gv_drive** %6, align 8
  %24 = load %struct.gv_drive*, %struct.gv_drive** %6, align 8
  %25 = icmp eq %struct.gv_drive* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store %struct.gv_drive* null, %struct.gv_drive** %3, align 8
  br label %131

27:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %28

28:                                               ; preds = %105, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %108

32:                                               ; preds = %28
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %108

49:                                               ; preds = %40
  %50 = load i8**, i8*** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @gv_drivestatei(i8* %54)
  %56 = load %struct.gv_drive*, %struct.gv_drive** %6, align 8
  %57 = getelementptr inbounds %struct.gv_drive, %struct.gv_drive* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  br label %104

58:                                               ; preds = %32
  %59 = load i8**, i8*** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %93, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %108

75:                                               ; preds = %66
  %76 = load i8**, i8*** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %9, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = call i64 @strncmp(i8* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 5
  store i8* %86, i8** %9, align 8
  br label %87

87:                                               ; preds = %84, %75
  %88 = load %struct.gv_drive*, %struct.gv_drive** %6, align 8
  %89 = getelementptr inbounds %struct.gv_drive, %struct.gv_drive* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @strlcpy(i32 %90, i8* %91, i32 4)
  br label %103

93:                                               ; preds = %58
  %94 = load %struct.gv_drive*, %struct.gv_drive** %6, align 8
  %95 = getelementptr inbounds %struct.gv_drive, %struct.gv_drive* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i8**, i8*** %5, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @strlcpy(i32 %96, i8* %101, i32 4)
  br label %103

103:                                              ; preds = %93, %87
  br label %104

104:                                              ; preds = %103, %49
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %28

108:                                              ; preds = %72, %46, %28
  %109 = load %struct.gv_drive*, %struct.gv_drive** %6, align 8
  %110 = getelementptr inbounds %struct.gv_drive, %struct.gv_drive* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @strlen(i32 %111)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load %struct.gv_drive*, %struct.gv_drive** %6, align 8
  %116 = getelementptr inbounds %struct.gv_drive, %struct.gv_drive* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @strlen(i32 %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %114, %108
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %120, %114
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load %struct.gv_drive*, %struct.gv_drive** %6, align 8
  %128 = call i32 @g_free(%struct.gv_drive* %127)
  store %struct.gv_drive* null, %struct.gv_drive** %3, align 8
  br label %131

129:                                              ; preds = %123
  %130 = load %struct.gv_drive*, %struct.gv_drive** %6, align 8
  store %struct.gv_drive* %130, %struct.gv_drive** %3, align 8
  br label %131

131:                                              ; preds = %129, %126, %26, %21
  %132 = load %struct.gv_drive*, %struct.gv_drive** %3, align 8
  ret %struct.gv_drive* %132
}

declare dso_local %struct.gv_drive* @gv_alloc_drive(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @gv_drivestatei(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @g_free(%struct.gv_drive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
