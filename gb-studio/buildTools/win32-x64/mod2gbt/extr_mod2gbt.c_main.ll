; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/mod2gbt/extr_mod2gbt.c_main.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/mod2gbt/extr_mod2gbt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32, i32*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [52 x i8] c"     +-------------------------------------------+\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"     |                                           |\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"     |     mod2gbt v2.0 (part of GBT Player)     |\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"     | Copyright (C) 2009-2014 Antonio Nino Diaz |\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"     |                      All rights reserved. |\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"     |                   antonio_nd@outlook.com  |\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@label_name = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@output_asm = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@DEFAULT_ROM_BANK = common dso_local global i32 0, align 4
@current_output_bank = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Invalid bank: %s\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Output to bank: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"\0A%s loaded!\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"M.K.\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"\0AValid mod file!\0A\00", align 1
@.str.15 = private unnamed_addr constant [82 x i8] c"\0AERROR: Not a valid mod file.\0AOnly 4 channel mod files with 31 samples allowed.\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"\0ASong name: \00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"\0A\0ASample names:\0A\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"%d: %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"Number of patterns: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"\0A// File created by mod2gbt\0A\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"\0A; File created by mod2gbt\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"#pragma bank=\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"\09SECTION \22\00", align 1
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"\22, DATA, BANK[\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"]\0A\0A\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"\0AConverting patterns.\0A\0A\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"Pattern %d...\0A\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"\0APattern order...\0A\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"const unsigned char * \00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"_Data[] = {\0A\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"_Data::\0A\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"    DW  \00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"    0x0000\0A\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"    DW  $0000\0A\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"\0ADone!\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 4
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 5
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 (...) @print_usage()
  store i32 -1, i32* %3, align 4
  br label %246

28:                                               ; preds = %23, %2
  %29 = load i8*, i8** @label_name, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 2
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strcpy(i8* %29, i8* %32)
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 3
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store i32 1, i32* @output_asm, align 4
  br label %50

40:                                               ; preds = %28
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 3
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* @output_asm, align 4
  br label %49

47:                                               ; preds = %40
  %48 = call i32 (...) @print_usage()
  store i32 -1, i32* %3, align 4
  br label %246

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %49, %39
  %51 = load i32, i32* @DEFAULT_ROM_BANK, align 4
  store i32 %51, i32* @current_output_bank, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 5
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 4
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @sscanf(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* @current_output_bank)
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 4
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %63)
  %65 = call i32 (...) @print_usage()
  store i32 -2, i32* %3, align 4
  br label %246

66:                                               ; preds = %54
  %67 = load i32, i32* @current_output_bank, align 4
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66
  br label %70

70:                                               ; preds = %69, %50
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 1
  %73 = load i8*, i8** %72, align 8
  %74 = call %struct.TYPE_5__* @load_file(i8* %73)
  store %struct.TYPE_5__* %74, %struct.TYPE_5__** %7, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %76 = icmp eq %struct.TYPE_5__* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i32 -2, i32* %3, align 4
  br label %246

78:                                               ; preds = %70
  %79 = load i8**, i8*** %5, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8* %81)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @strncmp(i32 %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 4)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %78
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  br label %92

90:                                               ; preds = %78
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.15, i64 0, i64 0))
  store i32 -3, i32* %3, align 4
  br label %246

92:                                               ; preds = %88
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %116, %92
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %95, 20
  br i1 %96, label %97, label %119

97:                                               ; preds = %94
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %97
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %106, %97
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %94

119:                                              ; preds = %94
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %148, %119
  %122 = load i32, i32* %6, align 4
  %123 = icmp slt i32 %122, 31
  br i1 %123, label %124, label %151

124:                                              ; preds = %121
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = icmp ne i8 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %124
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32 %137, i8* %145)
  br label %147

147:                                              ; preds = %136, %124
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %6, align 4
  br label %121

151:                                              ; preds = %121
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %153

153:                                              ; preds = %175, %151
  %154 = load i32, i32* %6, align 4
  %155 = icmp slt i32 %154, 128
  br i1 %155, label %156, label %178

156:                                              ; preds = %153
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp sgt i32 %163, %164
  br i1 %165, label %166, label %174

166:                                              ; preds = %156
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %8, align 4
  br label %174

174:                                              ; preds = %166, %156
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %6, align 4
  br label %153

178:                                              ; preds = %153
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32 %181)
  %183 = call i32 (...) @out_open()
  %184 = call i32 @out_write_str(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0))
  %185 = call i32 @out_write_str(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0))
  %186 = load i8*, i8** @label_name, align 8
  %187 = call i32 @out_write_str(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0), i8* %186)
  %188 = call i32 @out_write_str(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0))
  %189 = load i32, i32* @current_output_bank, align 4
  %190 = call i32 @out_write_dec(i32 %189)
  %191 = call i32 @out_write_str(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0))
  %192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %193

193:                                              ; preds = %208, %178
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %211

197:                                              ; preds = %193
  %198 = load i32, i32* %6, align 4
  %199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i32 %198)
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %6, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %6, align 4
  %207 = call i32 @convert_pattern(i32* %205, i32 %206)
  br label %208

208:                                              ; preds = %197
  %209 = load i32, i32* %6, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %6, align 4
  br label %193

211:                                              ; preds = %193
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0))
  %213 = call i32 @out_write_str(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0))
  %214 = load i8*, i8** @label_name, align 8
  %215 = load i8*, i8** @label_name, align 8
  %216 = call i32 @out_write_str(i8* %214, i8* %215)
  %217 = call i32 @out_write_str(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %218

218:                                              ; preds = %238, %211
  %219 = load i32, i32* %6, align 4
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = icmp slt i32 %219, %222
  br i1 %223, label %224, label %241

224:                                              ; preds = %218
  %225 = call i32 @out_write_str(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0))
  %226 = load i8*, i8** @label_name, align 8
  %227 = load i8*, i8** @label_name, align 8
  %228 = call i32 @out_write_str(i8* %226, i8* %227)
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %6, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @out_write_dec(i32 %235)
  %237 = call i32 @out_write_str(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %238

238:                                              ; preds = %224
  %239 = load i32, i32* %6, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %6, align 4
  br label %218

241:                                              ; preds = %218
  %242 = call i32 @out_write_str(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0))
  %243 = call i32 @out_write_str(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0))
  %244 = call i32 (...) @out_close()
  %245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %246

246:                                              ; preds = %241, %90, %77, %60, %47, %26
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_usage(...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_5__* @load_file(i8*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @out_open(...) #1

declare dso_local i32 @out_write_str(i8*, i8*) #1

declare dso_local i32 @out_write_dec(i32) #1

declare dso_local i32 @convert_pattern(i32*, i32) #1

declare dso_local i32 @out_close(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
