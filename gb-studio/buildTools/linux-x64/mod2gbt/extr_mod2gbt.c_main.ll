; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/mod2gbt/extr_mod2gbt.c_main.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/mod2gbt/extr_mod2gbt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32, i32*, i32 }

@.str = private unnamed_addr constant [35 x i8] c"mod2gbt v2.2 (part of GBT Player)\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"Copyright (c) 2009-2018 Antonio Ni\C3\B1o D\C3\ADaz <antonio_nd@outlook.com>\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"All rights reserved\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@label_name = common dso_local global i8* null, align 8
@DEFAULT_ROM_BANK = common dso_local global i32 0, align 4
@current_output_bank = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Invalid bank: '%s'\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Output to bank: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%s loaded!\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"M.K.\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Valid mod file!\0A\00", align 1
@.str.10 = private unnamed_addr constant [80 x i8] c"ERROR: Not a valid mod file.\0AOnly 4 channel mod files with 31 samples allowed.\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"\0ASong name: \00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Number of patterns: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"\0A// File created by mod2gbt\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"#pragma bank=\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"\0AConverting patterns...\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"\0A\0APattern order...\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"const unsigned char * const\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"_Data[] = {\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"    0x0000\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"\0ADone!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 4
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %2
  %19 = call i32 (...) @print_usage()
  store i32 -1, i32* %3, align 4
  br label %183

20:                                               ; preds = %15
  %21 = load i8*, i8** @label_name, align 8
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 2
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strcpy(i8* %21, i8* %24)
  %26 = load i32, i32* @DEFAULT_ROM_BANK, align 4
  store i32 %26, i32* @current_output_bank, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %29, label %45

29:                                               ; preds = %20
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 3
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @sscanf(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* @current_output_bank)
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 4
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %38)
  %40 = call i32 (...) @print_usage()
  store i32 -2, i32* %3, align 4
  br label %183

41:                                               ; preds = %29
  %42 = load i32, i32* @current_output_bank, align 4
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44, %20
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = call %struct.TYPE_3__* @load_file(i8* %48)
  store %struct.TYPE_3__* %49, %struct.TYPE_3__** %7, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %51 = icmp eq %struct.TYPE_3__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 -2, i32* %3, align 4
  br label %183

53:                                               ; preds = %45
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @strncmp(i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  br label %67

65:                                               ; preds = %53
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.10, i64 0, i64 0))
  store i32 -3, i32* %3, align 4
  br label %183

67:                                               ; preds = %63
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %91, %67
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 20
  br i1 %71, label %72, label %94

72:                                               ; preds = %69
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %72
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %81, %72
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %69

94:                                               ; preds = %69
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %118, %94
  %97 = load i32, i32* %6, align 4
  %98 = icmp slt i32 %97, 128
  br i1 %98, label %99, label %121

99:                                               ; preds = %96
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %99
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %109, %99
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %96

121:                                              ; preds = %96
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %124)
  %126 = call i32 (...) @out_open()
  %127 = call i32 @out_write_str(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  %128 = call i32 @out_write_str(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %129 = load i32, i32* @current_output_bank, align 4
  %130 = call i32 @out_write_dec(i32 %129)
  %131 = call i32 @out_write_str(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %133

133:                                              ; preds = %147, %121
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %150

137:                                              ; preds = %133
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @convert_pattern(i32* %144, i32 %145)
  br label %147

147:                                              ; preds = %137
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %6, align 4
  br label %133

150:                                              ; preds = %133
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  %152 = call i32 @out_write_str(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0))
  %153 = load i8*, i8** @label_name, align 8
  %154 = call i32 @out_write_str(i8* %153)
  %155 = call i32 @out_write_str(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %156

156:                                              ; preds = %175, %150
  %157 = load i32, i32* %6, align 4
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %178

162:                                              ; preds = %156
  %163 = call i32 @out_write_str(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  %164 = load i8*, i8** @label_name, align 8
  %165 = call i32 @out_write_str(i8* %164)
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @out_write_dec(i32 %172)
  %174 = call i32 @out_write_str(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  br label %175

175:                                              ; preds = %162
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %6, align 4
  br label %156

178:                                              ; preds = %156
  %179 = call i32 @out_write_str(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0))
  %180 = call i32 @out_write_str(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0))
  %181 = call i32 (...) @out_close()
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %183

183:                                              ; preds = %178, %65, %52, %35, %18
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_usage(...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_3__* @load_file(i8*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @out_open(...) #1

declare dso_local i32 @out_write_str(i8*) #1

declare dso_local i32 @out_write_dec(i32) #1

declare dso_local i32 @convert_pattern(i32*, i32) #1

declare dso_local i32 @out_close(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
