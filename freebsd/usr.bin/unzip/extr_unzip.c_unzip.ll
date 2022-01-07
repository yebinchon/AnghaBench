; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/unzip/extr_unzip.c_unzip.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/unzip/extr_unzip.c_unzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"archive_read_new failed\00", align 1
@zipinfo_mode = common dso_local global i64 0, align 8
@p_opt = common dso_local global i64 0, align 8
@q_opt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Archive:  %s\0A\00", align 1
@v_opt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"  Length     %sDate   Time    Name\0A\00", align 1
@y_str = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c" --------    %s----   ----    ----\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c" Length   Method    Size  Ratio   %sDate   Time   CRC-32    Name\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"--------  ------  ------- -----   %s----   ----   ------    ----\0A\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@t_opt = common dso_local global i64 0, align 8
@c_opt = common dso_local global i64 0, align 8
@Z1_opt = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c" --------                   %s-------\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c" %8ju                   %s%ju file%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [69 x i8] c"--------          -------  ---                            %s-------\0A\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"%8ju          %7ju   0%%                            %s%ju file%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"%ju checksum error(s) found.\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"No errors detected in compressed data of %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @unzip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unzip(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %9, %struct.archive** %3, align 8
  %10 = icmp eq %struct.archive* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.archive*, %struct.archive** %3, align 8
  %15 = call i32 @archive_read_support_format_zip(%struct.archive* %14)
  %16 = call i32 @ac(i32 %15)
  %17 = load %struct.archive*, %struct.archive** %3, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @archive_read_open_filename(%struct.archive* %17, i8* %18, i32 8192)
  %20 = call i32 @ac(i32 %19)
  %21 = load i64, i64* @zipinfo_mode, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %50, label %23

23:                                               ; preds = %13
  %24 = load i64, i64* @p_opt, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @q_opt, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %29, %26, %23
  %33 = load i32, i32* @v_opt, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i8*, i8** @y_str, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  %38 = load i8*, i8** @y_str, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  br label %49

40:                                               ; preds = %32
  %41 = load i32, i32* @v_opt, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i8*, i8** @y_str, align 8
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i8* %44)
  %46 = load i8*, i8** @y_str, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %43, %40
  br label %49

49:                                               ; preds = %48, %35
  br label %50

50:                                               ; preds = %49, %13
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %104, %50
  %52 = load %struct.archive*, %struct.archive** %3, align 8
  %53 = call i32 @archive_read_next_header(%struct.archive* %52, %struct.archive_entry** %4)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @ARCHIVE_EOF, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %111

58:                                               ; preds = %51
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @ac(i32 %59)
  %61 = load i64, i64* @zipinfo_mode, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %96, label %63

63:                                               ; preds = %58
  %64 = load i64, i64* @t_opt, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.archive*, %struct.archive** %3, align 8
  %68 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %69 = call i32 @test(%struct.archive* %67, %struct.archive_entry* %68)
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %8, align 4
  br label %95

72:                                               ; preds = %63
  %73 = load i32, i32* @v_opt, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.archive*, %struct.archive** %3, align 8
  %77 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %78 = call i32 @list(%struct.archive* %76, %struct.archive_entry* %77)
  br label %94

79:                                               ; preds = %72
  %80 = load i64, i64* @p_opt, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i64, i64* @c_opt, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82, %79
  %86 = load %struct.archive*, %struct.archive** %3, align 8
  %87 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %88 = call i32 @extract_stdout(%struct.archive* %86, %struct.archive_entry* %87)
  br label %93

89:                                               ; preds = %82
  %90 = load %struct.archive*, %struct.archive** %3, align 8
  %91 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %92 = call i32 @extract(%struct.archive* %90, %struct.archive_entry* %91)
  br label %93

93:                                               ; preds = %89, %85
  br label %94

94:                                               ; preds = %93, %75
  br label %95

95:                                               ; preds = %94, %66
  br label %104

96:                                               ; preds = %58
  %97 = load i64, i64* @Z1_opt, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load %struct.archive*, %struct.archive** %3, align 8
  %101 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %102 = call i32 @list(%struct.archive* %100, %struct.archive_entry* %101)
  br label %103

103:                                              ; preds = %99, %96
  br label %104

104:                                              ; preds = %103, %95
  %105 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %106 = call i32 @archive_entry_size(%struct.archive_entry* %105)
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %51

111:                                              ; preds = %57
  %112 = load i64, i64* @zipinfo_mode, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %145

114:                                              ; preds = %111
  %115 = load i32, i32* @v_opt, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %128

117:                                              ; preds = %114
  %118 = load i8*, i8** @y_str, align 8
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %118)
  %120 = load i32, i32* %6, align 4
  %121 = load i8*, i8** @y_str, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 1
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %120, i8* %121, i32 %122, i8* %126)
  br label %144

128:                                              ; preds = %114
  %129 = load i32, i32* @v_opt, align 4
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %143

131:                                              ; preds = %128
  %132 = load i8*, i8** @y_str, align 8
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.10, i64 0, i64 0), i8* %132)
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load i8*, i8** @y_str, align 8
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 1
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i64 0, i64 0), i32 %134, i32 %135, i8* %136, i32 %137, i8* %141)
  br label %143

143:                                              ; preds = %131, %128
  br label %144

144:                                              ; preds = %143, %117
  br label %145

145:                                              ; preds = %144, %111
  %146 = load %struct.archive*, %struct.archive** %3, align 8
  %147 = call i32 @archive_read_close(%struct.archive* %146)
  %148 = call i32 @ac(i32 %147)
  %149 = load %struct.archive*, %struct.archive** %3, align 8
  %150 = call i32 @archive_read_free(%struct.archive* %149)
  %151 = load i64, i64* @t_opt, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %145
  %154 = load i32, i32* %8, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @errorx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %157)
  br label %162

159:                                              ; preds = %153
  %160 = load i8*, i8** %2, align 8
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0), i8* %160)
  br label %162

162:                                              ; preds = %159, %156
  br label %163

163:                                              ; preds = %162, %145
  ret void
}

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @ac(i32) #1

declare dso_local i32 @archive_read_support_format_zip(%struct.archive*) #1

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @test(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @list(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @extract_stdout(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @extract(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @errorx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
