; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/unzip/extr_unzip.c_extract.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/unzip/extr_unzip.c_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"/../\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"skipping insecure entry '%s'\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"skipping non-regular entry '%s'\00", align 1
@j_opt = common dso_local global i64 0, align 8
@d_arg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*, %struct.archive_entry*)* @extract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract(%struct.archive* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %4, align 8
  %10 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %11 = call i32 @archive_entry_pathname(%struct.archive_entry* %10)
  %12 = call i8* @pathdup(i32 %11)
  store i8* %12, i8** %5, align 8
  %13 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %14 = call i32 @archive_entry_filetype(%struct.archive_entry* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 47
  br i1 %19, label %28, label %20

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @strncmp(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = call i32* @strstr(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %24, %20, %2
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @warningx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  %31 = load %struct.archive*, %struct.archive** %3, align 8
  %32 = call i32 @archive_read_data_skip(%struct.archive* %31)
  %33 = call i32 @ac(i32 %32)
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @free(i8* %34)
  br label %128

36:                                               ; preds = %24
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @S_ISDIR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @S_ISREG(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @S_ISLNK(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @warningx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  %51 = load %struct.archive*, %struct.archive** %3, align 8
  %52 = call i32 @archive_read_data_skip(%struct.archive* %51)
  %53 = call i32 @ac(i32 %52)
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @free(i8* %54)
  br label %128

56:                                               ; preds = %44, %40, %36
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @S_ISDIR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i64, i64* @j_opt, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.archive*, %struct.archive** %3, align 8
  %65 = call i32 @archive_read_data_skip(%struct.archive* %64)
  %66 = call i32 @ac(i32 %65)
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @free(i8* %67)
  br label %128

69:                                               ; preds = %60, %56
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @accept_pathname(i8* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = load %struct.archive*, %struct.archive** %3, align 8
  %75 = call i32 @archive_read_data_skip(%struct.archive* %74)
  %76 = call i32 @ac(i32 %75)
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @free(i8* %77)
  br label %128

79:                                               ; preds = %69
  %80 = load i64, i64* @j_opt, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %79
  %83 = load i8*, i8** %5, align 8
  store i8* %83, i8** %9, align 8
  store i8* %83, i8** %8, align 8
  br label %84

84:                                               ; preds = %97, %82
  %85 = load i8*, i8** %8, align 8
  %86 = load i8, i8* %85, align 1
  %87 = icmp ne i8 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %84
  %89 = load i8*, i8** %8, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 47
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  store i8* %95, i8** %9, align 8
  br label %96

96:                                               ; preds = %93, %88
  br label %97

97:                                               ; preds = %96
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %8, align 8
  br label %84

100:                                              ; preds = %84
  %101 = load i32, i32* @d_arg, align 4
  %102 = load i8*, i8** %9, align 8
  %103 = call i8* @pathcat(i32 %101, i8* %102)
  store i8* %103, i8** %6, align 8
  br label %108

104:                                              ; preds = %79
  %105 = load i32, i32* @d_arg, align 4
  %106 = load i8*, i8** %5, align 8
  %107 = call i8* @pathcat(i32 %105, i8* %106)
  store i8* %107, i8** %6, align 8
  br label %108

108:                                              ; preds = %104, %100
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @make_parent(i8* %109)
  %111 = load i32, i32* %7, align 4
  %112 = call i64 @S_ISDIR(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = load %struct.archive*, %struct.archive** %3, align 8
  %116 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = call i32 @extract_dir(%struct.archive* %115, %struct.archive_entry* %116, i8* %117)
  br label %123

119:                                              ; preds = %108
  %120 = load %struct.archive*, %struct.archive** %3, align 8
  %121 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %122 = call i32 @extract_file(%struct.archive* %120, %struct.archive_entry* %121, i8** %6)
  br label %123

123:                                              ; preds = %119, %114
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 @free(i8* %124)
  %126 = load i8*, i8** %5, align 8
  %127 = call i32 @free(i8* %126)
  br label %128

128:                                              ; preds = %123, %73, %63, %48, %28
  ret void
}

declare dso_local i8* @pathdup(i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @warningx(i8*, i8*) #1

declare dso_local i32 @ac(i32) #1

declare dso_local i32 @archive_read_data_skip(%struct.archive*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i32 @accept_pathname(i8*) #1

declare dso_local i8* @pathcat(i32, i8*) #1

declare dso_local i32 @make_parent(i8*) #1

declare dso_local i32 @extract_dir(%struct.archive*, %struct.archive_entry*, i8*) #1

declare dso_local i32 @extract_file(%struct.archive*, %struct.archive_entry*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
