; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ldd/extr_sods.c_dump_sym.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ldd/extr_sods.c_dump_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlist = type { i32, i32 }

@N_EXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"undf\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"bss\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"indr\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"comm\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"seta\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"sett\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"setd\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"setb\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"setv\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"fn\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"gsym\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"fname\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"fun\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"stsym\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"lcsym\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"rsym\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"sline\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"dsline\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"bsline\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"ssym\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"so\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"lsym\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"bincl\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"sol\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"psym\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"eincl\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"lbrac\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"excl\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"rbrac\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"bcomm\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"ecomm\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"ecoml\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"leng\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"%#02x\00", align 1
@.str.42 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"objt\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"%#01x\00", align 1
@BIND_WEAK = common dso_local global i64 0, align 8
@.str.46 = private unnamed_addr constant [17 x i8] c"%c%-6s %-4s %8lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlist*)* @dump_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_sym(%struct.nlist* %0) #0 {
  %2 = alloca %struct.nlist*, align 8
  %3 = alloca [8 x i8], align 1
  %4 = alloca [8 x i8], align 1
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store %struct.nlist* %0, %struct.nlist** %2, align 8
  %7 = load %struct.nlist*, %struct.nlist** %2, align 8
  %8 = getelementptr inbounds %struct.nlist, %struct.nlist* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @N_EXT, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  switch i32 %12, label %141 [
    i32 128, label %13
    i32 167, label %16
    i32 129, label %19
    i32 161, label %22
    i32 163, label %25
    i32 150, label %28
    i32 135, label %31
    i32 162, label %34
    i32 140, label %37
    i32 137, label %40
    i32 138, label %43
    i32 139, label %46
    i32 136, label %49
    i32 154, label %52
    i32 151, label %63
    i32 153, label %66
    i32 152, label %69
    i32 130, label %72
    i32 148, label %75
    i32 145, label %78
    i32 144, label %81
    i32 141, label %84
    i32 134, label %87
    i32 160, label %90
    i32 164, label %93
    i32 131, label %96
    i32 133, label %99
    i32 146, label %102
    i32 165, label %105
    i32 132, label %108
    i32 143, label %111
    i32 157, label %114
    i32 156, label %117
    i32 149, label %120
    i32 155, label %123
    i32 142, label %126
    i32 166, label %129
    i32 158, label %132
    i32 159, label %135
    i32 147, label %138
  ]

13:                                               ; preds = %1
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %15 = call i32 @strcpy(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %147

16:                                               ; preds = %1
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %18 = call i32 @strcpy(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %147

19:                                               ; preds = %1
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %21 = call i32 @strcpy(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %147

22:                                               ; preds = %1
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %24 = call i32 @strcpy(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %147

25:                                               ; preds = %1
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %27 = call i32 @strcpy(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %147

28:                                               ; preds = %1
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %30 = call i32 @strcpy(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %147

31:                                               ; preds = %1
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %33 = call i32 @strcpy(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %147

34:                                               ; preds = %1
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %36 = call i32 @strcpy(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %147

37:                                               ; preds = %1
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %39 = call i32 @strcpy(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %147

40:                                               ; preds = %1
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %42 = call i32 @strcpy(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %147

43:                                               ; preds = %1
  %44 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %45 = call i32 @strcpy(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %147

46:                                               ; preds = %1
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %48 = call i32 @strcpy(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %147

49:                                               ; preds = %1
  %50 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %51 = call i32 @strcpy(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %147

52:                                               ; preds = %1
  %53 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %54 = load %struct.nlist*, %struct.nlist** %2, align 8
  %55 = getelementptr inbounds %struct.nlist, %struct.nlist* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @N_EXT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)
  %62 = call i32 @strcpy(i8* %53, i8* %61)
  br label %147

63:                                               ; preds = %1
  %64 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %65 = call i32 @strcpy(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  br label %147

66:                                               ; preds = %1
  %67 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %68 = call i32 @strcpy(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  br label %147

69:                                               ; preds = %1
  %70 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %71 = call i32 @strcpy(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  br label %147

72:                                               ; preds = %1
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %74 = call i32 @strcpy(i8* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  br label %147

75:                                               ; preds = %1
  %76 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %77 = call i32 @strcpy(i8* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  br label %147

78:                                               ; preds = %1
  %79 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %80 = call i32 @strcpy(i8* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  br label %147

81:                                               ; preds = %1
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %83 = call i32 @strcpy(i8* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  br label %147

84:                                               ; preds = %1
  %85 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %86 = call i32 @strcpy(i8* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  br label %147

87:                                               ; preds = %1
  %88 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %89 = call i32 @strcpy(i8* %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  br label %147

90:                                               ; preds = %1
  %91 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %92 = call i32 @strcpy(i8* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  br label %147

93:                                               ; preds = %1
  %94 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %95 = call i32 @strcpy(i8* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0))
  br label %147

96:                                               ; preds = %1
  %97 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %98 = call i32 @strcpy(i8* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  br label %147

99:                                               ; preds = %1
  %100 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %101 = call i32 @strcpy(i8* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0))
  br label %147

102:                                              ; preds = %1
  %103 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %104 = call i32 @strcpy(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0))
  br label %147

105:                                              ; preds = %1
  %106 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %107 = call i32 @strcpy(i8* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0))
  br label %147

108:                                              ; preds = %1
  %109 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %110 = call i32 @strcpy(i8* %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0))
  br label %147

111:                                              ; preds = %1
  %112 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %113 = call i32 @strcpy(i8* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  br label %147

114:                                              ; preds = %1
  %115 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %116 = call i32 @strcpy(i8* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0))
  br label %147

117:                                              ; preds = %1
  %118 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %119 = call i32 @strcpy(i8* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0))
  br label %147

120:                                              ; preds = %1
  %121 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %122 = call i32 @strcpy(i8* %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0))
  br label %147

123:                                              ; preds = %1
  %124 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %125 = call i32 @strcpy(i8* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0))
  br label %147

126:                                              ; preds = %1
  %127 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %128 = call i32 @strcpy(i8* %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0))
  br label %147

129:                                              ; preds = %1
  %130 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %131 = call i32 @strcpy(i8* %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0))
  br label %147

132:                                              ; preds = %1
  %133 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %134 = call i32 @strcpy(i8* %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0))
  br label %147

135:                                              ; preds = %1
  %136 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %137 = call i32 @strcpy(i8* %136, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0))
  br label %147

138:                                              ; preds = %1
  %139 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %140 = call i32 @strcpy(i8* %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0))
  br label %147

141:                                              ; preds = %1
  %142 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %143 = load %struct.nlist*, %struct.nlist** %2, align 8
  %144 = getelementptr inbounds %struct.nlist, %struct.nlist* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @snprintf(i8* %142, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %141, %138, %135, %132, %129, %126, %123, %120, %117, %114, %111, %108, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78, %75, %72, %69, %66, %63, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13
  %148 = load %struct.nlist*, %struct.nlist** %2, align 8
  %149 = getelementptr inbounds %struct.nlist, %struct.nlist* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @N_EXT, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %175

154:                                              ; preds = %147
  %155 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 48
  br i1 %158, label %159, label %175

159:                                              ; preds = %154
  %160 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  store i8* %160, i8** %6, align 8
  br label %161

161:                                              ; preds = %171, %159
  %162 = load i8*, i8** %6, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %161
  %167 = load i8*, i8** %6, align 8
  %168 = load i8, i8* %167, align 1
  %169 = call signext i8 @toupper(i8 signext %168)
  %170 = load i8*, i8** %6, align 8
  store i8 %169, i8* %170, align 1
  br label %171

171:                                              ; preds = %166
  %172 = load i8*, i8** %6, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %6, align 8
  br label %161

174:                                              ; preds = %161
  br label %175

175:                                              ; preds = %174, %154, %147
  %176 = load %struct.nlist*, %struct.nlist** %2, align 8
  %177 = call i32 @N_AUX(%struct.nlist* %176)
  switch i32 %177, label %187 [
    i32 0, label %178
    i32 168, label %181
    i32 169, label %184
  ]

178:                                              ; preds = %175
  %179 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %180 = call i32 @strcpy(i8* %179, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i64 0, i64 0))
  br label %192

181:                                              ; preds = %175
  %182 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %183 = call i32 @strcpy(i8* %182, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0))
  br label %192

184:                                              ; preds = %175
  %185 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %186 = call i32 @strcpy(i8* %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0))
  br label %192

187:                                              ; preds = %175
  %188 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %189 = load %struct.nlist*, %struct.nlist** %2, align 8
  %190 = call i32 @N_AUX(%struct.nlist* %189)
  %191 = call i32 @snprintf(i8* %188, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %187, %184, %181, %178
  %193 = load %struct.nlist*, %struct.nlist** %2, align 8
  %194 = call i64 @N_BIND(%struct.nlist* %193)
  %195 = load i64, i64* @BIND_WEAK, align 8
  %196 = icmp eq i64 %194, %195
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i32 119, i32 32
  %199 = trunc i32 %198 to i8
  store i8 %199, i8* %5, align 1
  %200 = load i8, i8* %5, align 1
  %201 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %202 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %203 = load %struct.nlist*, %struct.nlist** %2, align 8
  %204 = getelementptr inbounds %struct.nlist, %struct.nlist* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0), i8 signext %200, i8* %201, i8* %202, i32 %205)
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i32 @N_AUX(%struct.nlist*) #1

declare dso_local i64 @N_BIND(%struct.nlist*) #1

declare dso_local i32 @printf(i8*, i8 signext, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
