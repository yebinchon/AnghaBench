; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_db_disasm.c_db_disasm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_db_disasm.c_db_disasm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inst = type { i8*, i32, i32, %struct.inst*, i64 }
%struct.i_addr = type { i32 }

@kdb_frame = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@WORD = common dso_local global i32 0, align 4
@LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%es\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%ss\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%cs\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ds\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%fs\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%gs\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"lock \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"repne \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"pause\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"repe \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@db_inst_0f = common dso_local global %struct.inst** null, align 8
@db_bad_inst = common dso_local global %struct.inst zeroinitializer, align 8
@db_inst_table = common dso_local global %struct.inst* null, align 8
@db_Grp1 = common dso_local global %struct.inst* null, align 8
@db_Grp2 = common dso_local global %struct.inst* null, align 8
@db_Grp6 = common dso_local global %struct.inst* null, align 8
@db_Grp7 = common dso_local global %struct.inst* null, align 8
@db_Grp8 = common dso_local global %struct.inst* null, align 8
@db_Grp9 = common dso_local global %struct.inst* null, align 8
@db_Grp15 = common dso_local global %struct.inst* null, align 8
@db_Grp3 = common dso_local global %struct.inst* null, align 8
@db_Grp4 = common dso_local global %struct.inst* null, align 8
@db_Grp5 = common dso_local global %struct.inst* null, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"monitor\00", align 1
@NONE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"mwait\00", align 1
@db_Grp15b = common dso_local global i8** null, align 8
@SDEP = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@BYTE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@db_reg = common dso_local global i32** null, align 8
@db_seg_reg = common dso_local global i32* null, align 8
@.str.20 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%bx\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"%ebx\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"%%cl\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"%%dx\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"%si\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"%esi\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"%%es:(%s)\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"%di\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"%edi\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"%%cr%d\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"%%dr%d\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"%%tr%d\00", align 1
@db_lengths = common dso_local global i32* null, align 8
@.str.34 = private unnamed_addr constant [5 x i8] c"$%#r\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"$%+#r\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"%s:%+#r\00", align 1
@DB_STGY_ANY = common dso_local global i32 0, align 4
@DB_STGY_XTRN = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [3 x i8] c"$1\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"$3\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"$%#r,%#r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_disasm(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.inst*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.i_addr, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %14, align 4
  %23 = load i32, i32* @kdb_frame, align 4
  %24 = call i32 @db_segsize(i32 %23)
  %25 = icmp eq i32 %24, 16
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %26, %2
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @FALSE, align 4
  %35 = call i32 @get_value_inc(i32 %32, i32 %33, i32 1, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* @WORD, align 4
  store i32 %40, i32* %7, align 4
  br label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @LONG, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %41, %38
  store i8* null, i8** %9, align 8
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %17, align 4
  br label %47

47:                                               ; preds = %99, %44
  %48 = load i32, i32* %6, align 4
  switch i32 %48, label %75 [
    i32 102, label %49
    i32 103, label %58
    i32 38, label %63
    i32 54, label %64
    i32 46, label %65
    i32 62, label %66
    i32 100, label %67
    i32 101, label %68
    i32 240, label %69
    i32 242, label %71
    i32 243, label %73
  ]

49:                                               ; preds = %47
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @LONG, align 4
  br label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @WORD, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %7, align 4
  br label %77

58:                                               ; preds = %47
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %8, align 4
  br label %77

63:                                               ; preds = %47
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %77

64:                                               ; preds = %47
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %77

65:                                               ; preds = %47
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %77

66:                                               ; preds = %47
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %77

67:                                               ; preds = %47
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %77

68:                                               ; preds = %47
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %77

69:                                               ; preds = %47
  %70 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %77

71:                                               ; preds = %47
  %72 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %77

73:                                               ; preds = %47
  %74 = load i32, i32* @TRUE, align 4
  store i32 %74, i32* %18, align 4
  br label %77

75:                                               ; preds = %47
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %17, align 4
  br label %77

77:                                               ; preds = %75, %73, %71, %69, %68, %67, %66, %65, %64, %63, %58, %56
  %78 = load i32, i32* %17, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @FALSE, align 4
  %84 = call i32 @get_value_inc(i32 %81, i32 %82, i32 1, i32 %83)
  br label %85

85:                                               ; preds = %80, %77
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* @TRUE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = load i32, i32* %6, align 4
  %91 = icmp eq i32 %90, 144
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %94 = load i32, i32* %4, align 4
  store i32 %94, i32* %3, align 4
  br label %659

95:                                               ; preds = %89
  %96 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %97 = load i32, i32* @FALSE, align 4
  store i32 %97, i32* %18, align 4
  br label %98

98:                                               ; preds = %95, %85
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %47, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %6, align 4
  %104 = icmp sge i32 %103, 216
  br i1 %104, label %105, label %117

105:                                              ; preds = %102
  %106 = load i32, i32* %6, align 4
  %107 = icmp sle i32 %106, 223
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i8*, i8** %9, align 8
  %114 = call i32 @db_disasm_esc(i32 %109, i32 %110, i32 %111, i32 %112, i8* %113)
  store i32 %114, i32* %4, align 4
  %115 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %116 = load i32, i32* %4, align 4
  store i32 %116, i32* %3, align 4
  br label %659

117:                                              ; preds = %105, %102
  %118 = load i32, i32* %6, align 4
  %119 = icmp eq i32 %118, 15
  br i1 %119, label %120, label %141

120:                                              ; preds = %117
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @FALSE, align 4
  %124 = call i32 @get_value_inc(i32 %121, i32 %122, i32 1, i32 %123)
  %125 = load %struct.inst**, %struct.inst*** @db_inst_0f, align 8
  %126 = load i32, i32* %6, align 4
  %127 = ashr i32 %126, 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.inst*, %struct.inst** %125, i64 %128
  %130 = load %struct.inst*, %struct.inst** %129, align 8
  store %struct.inst* %130, %struct.inst** %10, align 8
  %131 = load %struct.inst*, %struct.inst** %10, align 8
  %132 = icmp eq %struct.inst* %131, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %120
  store %struct.inst* @db_bad_inst, %struct.inst** %10, align 8
  br label %140

134:                                              ; preds = %120
  %135 = load %struct.inst*, %struct.inst** %10, align 8
  %136 = load i32, i32* %6, align 4
  %137 = and i32 %136, 15
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.inst, %struct.inst* %135, i64 %138
  store %struct.inst* %139, %struct.inst** %10, align 8
  br label %140

140:                                              ; preds = %134, %133
  br label %146

141:                                              ; preds = %117
  %142 = load %struct.inst*, %struct.inst** @db_inst_table, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.inst, %struct.inst* %142, i64 %144
  store %struct.inst* %145, %struct.inst** %10, align 8
  br label %146

146:                                              ; preds = %141, %140
  %147 = load %struct.inst*, %struct.inst** %10, align 8
  %148 = getelementptr inbounds %struct.inst, %struct.inst* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %146
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* @FALSE, align 4
  %155 = call i32 @get_value_inc(i32 %152, i32 %153, i32 1, i32 %154)
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %14, align 4
  %159 = call i32 @db_read_address(i32 %156, i32 %157, i32 %158, %struct.i_addr* %22)
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %151, %146
  %161 = load %struct.inst*, %struct.inst** %10, align 8
  %162 = getelementptr inbounds %struct.inst, %struct.inst* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  store i8* %163, i8** %11, align 8
  %164 = load %struct.inst*, %struct.inst** %10, align 8
  %165 = getelementptr inbounds %struct.inst, %struct.inst* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  store i32 %166, i32* %12, align 4
  %167 = load %struct.inst*, %struct.inst** %10, align 8
  %168 = getelementptr inbounds %struct.inst, %struct.inst* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %13, align 4
  %170 = load %struct.inst*, %struct.inst** %10, align 8
  %171 = getelementptr inbounds %struct.inst, %struct.inst* %170, i32 0, i32 3
  %172 = load %struct.inst*, %struct.inst** %171, align 8
  %173 = load %struct.inst*, %struct.inst** @db_Grp1, align 8
  %174 = icmp eq %struct.inst* %172, %173
  br i1 %174, label %211, label %175

175:                                              ; preds = %160
  %176 = load %struct.inst*, %struct.inst** %10, align 8
  %177 = getelementptr inbounds %struct.inst, %struct.inst* %176, i32 0, i32 3
  %178 = load %struct.inst*, %struct.inst** %177, align 8
  %179 = load %struct.inst*, %struct.inst** @db_Grp2, align 8
  %180 = icmp eq %struct.inst* %178, %179
  br i1 %180, label %211, label %181

181:                                              ; preds = %175
  %182 = load %struct.inst*, %struct.inst** %10, align 8
  %183 = getelementptr inbounds %struct.inst, %struct.inst* %182, i32 0, i32 3
  %184 = load %struct.inst*, %struct.inst** %183, align 8
  %185 = load %struct.inst*, %struct.inst** @db_Grp6, align 8
  %186 = icmp eq %struct.inst* %184, %185
  br i1 %186, label %211, label %187

187:                                              ; preds = %181
  %188 = load %struct.inst*, %struct.inst** %10, align 8
  %189 = getelementptr inbounds %struct.inst, %struct.inst* %188, i32 0, i32 3
  %190 = load %struct.inst*, %struct.inst** %189, align 8
  %191 = load %struct.inst*, %struct.inst** @db_Grp7, align 8
  %192 = icmp eq %struct.inst* %190, %191
  br i1 %192, label %211, label %193

193:                                              ; preds = %187
  %194 = load %struct.inst*, %struct.inst** %10, align 8
  %195 = getelementptr inbounds %struct.inst, %struct.inst* %194, i32 0, i32 3
  %196 = load %struct.inst*, %struct.inst** %195, align 8
  %197 = load %struct.inst*, %struct.inst** @db_Grp8, align 8
  %198 = icmp eq %struct.inst* %196, %197
  br i1 %198, label %211, label %199

199:                                              ; preds = %193
  %200 = load %struct.inst*, %struct.inst** %10, align 8
  %201 = getelementptr inbounds %struct.inst, %struct.inst* %200, i32 0, i32 3
  %202 = load %struct.inst*, %struct.inst** %201, align 8
  %203 = load %struct.inst*, %struct.inst** @db_Grp9, align 8
  %204 = icmp eq %struct.inst* %202, %203
  br i1 %204, label %211, label %205

205:                                              ; preds = %199
  %206 = load %struct.inst*, %struct.inst** %10, align 8
  %207 = getelementptr inbounds %struct.inst, %struct.inst* %206, i32 0, i32 3
  %208 = load %struct.inst*, %struct.inst** %207, align 8
  %209 = load %struct.inst*, %struct.inst** @db_Grp15, align 8
  %210 = icmp eq %struct.inst* %208, %209
  br i1 %210, label %211, label %220

211:                                              ; preds = %205, %199, %193, %187, %181, %175, %160
  %212 = load %struct.inst*, %struct.inst** %10, align 8
  %213 = getelementptr inbounds %struct.inst, %struct.inst* %212, i32 0, i32 3
  %214 = load %struct.inst*, %struct.inst** %213, align 8
  %215 = bitcast %struct.inst* %214 to i8**
  %216 = load i32, i32* %14, align 4
  %217 = call i64 @f_reg(i32 %216)
  %218 = getelementptr inbounds i8*, i8** %215, i64 %217
  %219 = load i8*, i8** %218, align 8
  store i8* %219, i8** %11, align 8
  br label %271

220:                                              ; preds = %205
  %221 = load %struct.inst*, %struct.inst** %10, align 8
  %222 = getelementptr inbounds %struct.inst, %struct.inst* %221, i32 0, i32 3
  %223 = load %struct.inst*, %struct.inst** %222, align 8
  %224 = load %struct.inst*, %struct.inst** @db_Grp3, align 8
  %225 = icmp eq %struct.inst* %223, %224
  br i1 %225, label %226, label %240

226:                                              ; preds = %220
  %227 = load %struct.inst*, %struct.inst** %10, align 8
  %228 = getelementptr inbounds %struct.inst, %struct.inst* %227, i32 0, i32 3
  %229 = load %struct.inst*, %struct.inst** %228, align 8
  store %struct.inst* %229, %struct.inst** %10, align 8
  %230 = load %struct.inst*, %struct.inst** %10, align 8
  %231 = load i32, i32* %14, align 4
  %232 = call i64 @f_reg(i32 %231)
  %233 = getelementptr inbounds %struct.inst, %struct.inst* %230, i64 %232
  store %struct.inst* %233, %struct.inst** %10, align 8
  %234 = load %struct.inst*, %struct.inst** %10, align 8
  %235 = getelementptr inbounds %struct.inst, %struct.inst* %234, i32 0, i32 0
  %236 = load i8*, i8** %235, align 8
  store i8* %236, i8** %11, align 8
  %237 = load %struct.inst*, %struct.inst** %10, align 8
  %238 = getelementptr inbounds %struct.inst, %struct.inst* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  store i32 %239, i32* %13, align 4
  br label %270

240:                                              ; preds = %220
  %241 = load %struct.inst*, %struct.inst** %10, align 8
  %242 = getelementptr inbounds %struct.inst, %struct.inst* %241, i32 0, i32 3
  %243 = load %struct.inst*, %struct.inst** %242, align 8
  %244 = load %struct.inst*, %struct.inst** @db_Grp4, align 8
  %245 = icmp eq %struct.inst* %243, %244
  br i1 %245, label %252, label %246

246:                                              ; preds = %240
  %247 = load %struct.inst*, %struct.inst** %10, align 8
  %248 = getelementptr inbounds %struct.inst, %struct.inst* %247, i32 0, i32 3
  %249 = load %struct.inst*, %struct.inst** %248, align 8
  %250 = load %struct.inst*, %struct.inst** @db_Grp5, align 8
  %251 = icmp eq %struct.inst* %249, %250
  br i1 %251, label %252, label %269

252:                                              ; preds = %246, %240
  %253 = load %struct.inst*, %struct.inst** %10, align 8
  %254 = getelementptr inbounds %struct.inst, %struct.inst* %253, i32 0, i32 3
  %255 = load %struct.inst*, %struct.inst** %254, align 8
  store %struct.inst* %255, %struct.inst** %10, align 8
  %256 = load %struct.inst*, %struct.inst** %10, align 8
  %257 = load i32, i32* %14, align 4
  %258 = call i64 @f_reg(i32 %257)
  %259 = getelementptr inbounds %struct.inst, %struct.inst* %256, i64 %258
  store %struct.inst* %259, %struct.inst** %10, align 8
  %260 = load %struct.inst*, %struct.inst** %10, align 8
  %261 = getelementptr inbounds %struct.inst, %struct.inst* %260, i32 0, i32 0
  %262 = load i8*, i8** %261, align 8
  store i8* %262, i8** %11, align 8
  %263 = load %struct.inst*, %struct.inst** %10, align 8
  %264 = getelementptr inbounds %struct.inst, %struct.inst* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  store i32 %265, i32* %13, align 4
  %266 = load %struct.inst*, %struct.inst** %10, align 8
  %267 = getelementptr inbounds %struct.inst, %struct.inst* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  store i32 %268, i32* %12, align 4
  br label %269

269:                                              ; preds = %252, %246
  br label %270

270:                                              ; preds = %269, %226
  br label %271

271:                                              ; preds = %270, %211
  %272 = load %struct.inst*, %struct.inst** %10, align 8
  %273 = getelementptr inbounds %struct.inst, %struct.inst* %272, i32 0, i32 3
  %274 = load %struct.inst*, %struct.inst** %273, align 8
  %275 = load %struct.inst*, %struct.inst** @db_Grp7, align 8
  %276 = icmp eq %struct.inst* %274, %275
  br i1 %276, label %277, label %288

277:                                              ; preds = %271
  %278 = load i32, i32* %14, align 4
  %279 = call i32 @f_mod(i32 %278)
  %280 = icmp eq i32 %279, 3
  br i1 %280, label %281, label %288

281:                                              ; preds = %277
  %282 = load i32, i32* %14, align 4
  switch i32 %282, label %287 [
    i32 200, label %283
    i32 201, label %285
  ]

283:                                              ; preds = %281
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %11, align 8
  %284 = load i32, i32* @NONE, align 4
  store i32 %284, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %287

285:                                              ; preds = %281
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8** %11, align 8
  %286 = load i32, i32* @NONE, align 4
  store i32 %286, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %287

287:                                              ; preds = %281, %285, %283
  br label %288

288:                                              ; preds = %287, %277, %271
  %289 = load %struct.inst*, %struct.inst** %10, align 8
  %290 = getelementptr inbounds %struct.inst, %struct.inst* %289, i32 0, i32 3
  %291 = load %struct.inst*, %struct.inst** %290, align 8
  %292 = load %struct.inst*, %struct.inst** @db_Grp15, align 8
  %293 = icmp eq %struct.inst* %291, %292
  br i1 %293, label %294, label %305

294:                                              ; preds = %288
  %295 = load i32, i32* %14, align 4
  %296 = call i32 @f_mod(i32 %295)
  %297 = icmp eq i32 %296, 3
  br i1 %297, label %298, label %305

298:                                              ; preds = %294
  %299 = load i8**, i8*** @db_Grp15b, align 8
  %300 = load i32, i32* %14, align 4
  %301 = call i64 @f_reg(i32 %300)
  %302 = getelementptr inbounds i8*, i8** %299, i64 %301
  %303 = load i8*, i8** %302, align 8
  store i8* %303, i8** %11, align 8
  %304 = load i32, i32* @NONE, align 4
  store i32 %304, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %305

305:                                              ; preds = %298, %294, %288
  %306 = load i32, i32* %12, align 4
  %307 = load i32, i32* @SDEP, align 4
  %308 = icmp eq i32 %306, %307
  br i1 %308, label %309, label %323

309:                                              ; preds = %305
  %310 = load i32, i32* %7, align 4
  %311 = load i32, i32* @WORD, align 4
  %312 = icmp eq i32 %310, %311
  br i1 %312, label %313, label %316

313:                                              ; preds = %309
  %314 = load i8*, i8** %11, align 8
  %315 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %314)
  br label %322

316:                                              ; preds = %309
  %317 = load %struct.inst*, %struct.inst** %10, align 8
  %318 = getelementptr inbounds %struct.inst, %struct.inst* %317, i32 0, i32 3
  %319 = load %struct.inst*, %struct.inst** %318, align 8
  %320 = bitcast %struct.inst* %319 to i8*
  %321 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %320)
  br label %322

322:                                              ; preds = %316, %313
  br label %355

323:                                              ; preds = %305
  %324 = load i8*, i8** %11, align 8
  %325 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %324)
  %326 = load i32, i32* %12, align 4
  %327 = load i32, i32* @NONE, align 4
  %328 = icmp ne i32 %326, %327
  br i1 %328, label %329, label %354

329:                                              ; preds = %323
  %330 = load i32, i32* %12, align 4
  %331 = load i32, i32* @BYTE, align 4
  %332 = icmp eq i32 %330, %331
  br i1 %332, label %333, label %336

333:                                              ; preds = %329
  %334 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %335 = load i32, i32* @BYTE, align 4
  store i32 %335, i32* %7, align 4
  br label %353

336:                                              ; preds = %329
  %337 = load i32, i32* %12, align 4
  %338 = load i32, i32* @WORD, align 4
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %340, label %343

340:                                              ; preds = %336
  %341 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %342 = load i32, i32* @WORD, align 4
  store i32 %342, i32* %7, align 4
  br label %352

343:                                              ; preds = %336
  %344 = load i32, i32* %7, align 4
  %345 = load i32, i32* @WORD, align 4
  %346 = icmp eq i32 %344, %345
  br i1 %346, label %347, label %349

347:                                              ; preds = %343
  %348 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %351

349:                                              ; preds = %343
  %350 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %351

351:                                              ; preds = %349, %347
  br label %352

352:                                              ; preds = %351, %340
  br label %353

353:                                              ; preds = %352, %333
  br label %354

354:                                              ; preds = %353, %323
  br label %355

355:                                              ; preds = %354, %322
  %356 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %357

357:                                              ; preds = %653, %355
  %358 = load i32, i32* %13, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %656

360:                                              ; preds = %357
  %361 = load i32, i32* %15, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %365, label %363

363:                                              ; preds = %360
  %364 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  br label %365

365:                                              ; preds = %363, %360
  %366 = load i32, i32* %13, align 4
  %367 = and i32 %366, 255
  switch i32 %367, label %652 [
    i32 150, label %368
    i32 148, label %372
    i32 147, label %377
    i32 146, label %381
    i32 149, label %385
    i32 137, label %389
    i32 134, label %400
    i32 136, label %411
    i32 135, label %422
    i32 133, label %433
    i32 131, label %440
    i32 159, label %447
    i32 158, label %456
    i32 157, label %468
    i32 153, label %470
    i32 132, label %472
    i32 155, label %484
    i32 156, label %490
    i32 154, label %494
    i32 130, label %498
    i32 145, label %502
    i32 141, label %515
    i32 144, label %528
    i32 143, label %535
    i32 142, label %546
    i32 140, label %560
    i32 139, label %567
    i32 152, label %588
    i32 151, label %606
    i32 129, label %630
    i32 128, label %632
    i32 138, label %634
  ]

368:                                              ; preds = %365
  %369 = load i8*, i8** %9, align 8
  %370 = load i32, i32* %7, align 4
  %371 = call i32 @db_print_address(i8* %369, i32 %370, %struct.i_addr* %22)
  br label %652

372:                                              ; preds = %365
  %373 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %374 = load i8*, i8** %9, align 8
  %375 = load i32, i32* %7, align 4
  %376 = call i32 @db_print_address(i8* %374, i32 %375, %struct.i_addr* %22)
  br label %652

377:                                              ; preds = %365
  %378 = load i8*, i8** %9, align 8
  %379 = load i32, i32* @LONG, align 4
  %380 = call i32 @db_print_address(i8* %378, i32 %379, %struct.i_addr* %22)
  br label %652

381:                                              ; preds = %365
  %382 = load i8*, i8** %9, align 8
  %383 = load i32, i32* @WORD, align 4
  %384 = call i32 @db_print_address(i8* %382, i32 %383, %struct.i_addr* %22)
  br label %652

385:                                              ; preds = %365
  %386 = load i8*, i8** %9, align 8
  %387 = load i32, i32* @BYTE, align 4
  %388 = call i32 @db_print_address(i8* %386, i32 %387, %struct.i_addr* %22)
  br label %652

389:                                              ; preds = %365
  %390 = load i32**, i32*** @db_reg, align 8
  %391 = load i32, i32* %7, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32*, i32** %390, i64 %392
  %394 = load i32*, i32** %393, align 8
  %395 = load i32, i32* %14, align 4
  %396 = call i64 @f_reg(i32 %395)
  %397 = getelementptr inbounds i32, i32* %394, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 %398)
  br label %652

400:                                              ; preds = %365
  %401 = load i32**, i32*** @db_reg, align 8
  %402 = load i32, i32* @WORD, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32*, i32** %401, i64 %403
  %405 = load i32*, i32** %404, align 8
  %406 = load i32, i32* %14, align 4
  %407 = call i64 @f_reg(i32 %406)
  %408 = getelementptr inbounds i32, i32* %405, i64 %407
  %409 = load i32, i32* %408, align 4
  %410 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 %409)
  br label %652

411:                                              ; preds = %365
  %412 = load i32**, i32*** @db_reg, align 8
  %413 = load i32, i32* %7, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32*, i32** %412, i64 %414
  %416 = load i32*, i32** %415, align 8
  %417 = load i32, i32* %6, align 4
  %418 = call i64 @f_rm(i32 %417)
  %419 = getelementptr inbounds i32, i32* %416, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 %420)
  br label %652

422:                                              ; preds = %365
  %423 = load i32**, i32*** @db_reg, align 8
  %424 = load i32, i32* @LONG, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32*, i32** %423, i64 %425
  %427 = load i32*, i32** %426, align 8
  %428 = load i32, i32* %6, align 4
  %429 = call i64 @f_rm(i32 %428)
  %430 = getelementptr inbounds i32, i32* %427, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 %431)
  br label %652

433:                                              ; preds = %365
  %434 = load i32*, i32** @db_seg_reg, align 8
  %435 = load i32, i32* %14, align 4
  %436 = call i64 @f_reg(i32 %435)
  %437 = getelementptr inbounds i32, i32* %434, i64 %436
  %438 = load i32, i32* %437, align 4
  %439 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 %438)
  br label %652

440:                                              ; preds = %365
  %441 = load i32*, i32** @db_seg_reg, align 8
  %442 = load i32, i32* %6, align 4
  %443 = call i64 @f_reg(i32 %442)
  %444 = getelementptr inbounds i32, i32* %441, i64 %443
  %445 = load i32, i32* %444, align 4
  %446 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 %445)
  br label %652

447:                                              ; preds = %365
  %448 = load i32**, i32*** @db_reg, align 8
  %449 = load i32, i32* %7, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32*, i32** %448, i64 %450
  %452 = load i32*, i32** %451, align 8
  %453 = getelementptr inbounds i32, i32* %452, i64 0
  %454 = load i32, i32* %453, align 4
  %455 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 %454)
  br label %652

456:                                              ; preds = %365
  %457 = load i8*, i8** %9, align 8
  %458 = icmp ne i8* %457, null
  br i1 %458, label %459, label %462

459:                                              ; preds = %456
  %460 = load i8*, i8** %9, align 8
  %461 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* %460)
  br label %462

462:                                              ; preds = %459, %456
  %463 = load i32, i32* %8, align 4
  %464 = icmp ne i32 %463, 0
  %465 = zext i1 %464 to i64
  %466 = select i1 %464, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)
  %467 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* %466)
  br label %652

468:                                              ; preds = %365
  %469 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  br label %652

470:                                              ; preds = %365
  %471 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0))
  br label %652

472:                                              ; preds = %365
  %473 = load i8*, i8** %9, align 8
  %474 = icmp ne i8* %473, null
  br i1 %474, label %475, label %478

475:                                              ; preds = %472
  %476 = load i8*, i8** %9, align 8
  %477 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* %476)
  br label %478

478:                                              ; preds = %475, %472
  %479 = load i32, i32* %8, align 4
  %480 = icmp ne i32 %479, 0
  %481 = zext i1 %480 to i64
  %482 = select i1 %480, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)
  %483 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* %482)
  br label %652

484:                                              ; preds = %365
  %485 = load i32, i32* %8, align 4
  %486 = icmp ne i32 %485, 0
  %487 = zext i1 %486 to i64
  %488 = select i1 %486, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0)
  %489 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), i8* %488)
  br label %652

490:                                              ; preds = %365
  %491 = load i32, i32* %14, align 4
  %492 = call i64 @f_reg(i32 %491)
  %493 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i64 %492)
  br label %652

494:                                              ; preds = %365
  %495 = load i32, i32* %14, align 4
  %496 = call i64 @f_reg(i32 %495)
  %497 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i64 %496)
  br label %652

498:                                              ; preds = %365
  %499 = load i32, i32* %14, align 4
  %500 = call i64 @f_reg(i32 %499)
  %501 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i64 %500)
  br label %652

502:                                              ; preds = %365
  %503 = load i32*, i32** @db_lengths, align 8
  %504 = load i32, i32* %7, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i32, i32* %503, i64 %505
  %507 = load i32, i32* %506, align 4
  store i32 %507, i32* %21, align 4
  %508 = load i32, i32* %19, align 4
  %509 = load i32, i32* %4, align 4
  %510 = load i32, i32* %21, align 4
  %511 = load i32, i32* @FALSE, align 4
  %512 = call i32 @get_value_inc(i32 %508, i32 %509, i32 %510, i32 %511)
  %513 = load i32, i32* %19, align 4
  %514 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i32 %513)
  br label %652

515:                                              ; preds = %365
  %516 = load i32*, i32** @db_lengths, align 8
  %517 = load i32, i32* %7, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i32, i32* %516, i64 %518
  %520 = load i32, i32* %519, align 4
  store i32 %520, i32* %21, align 4
  %521 = load i32, i32* %19, align 4
  %522 = load i32, i32* %4, align 4
  %523 = load i32, i32* %21, align 4
  %524 = load i32, i32* @FALSE, align 4
  %525 = call i32 @get_value_inc(i32 %521, i32 %522, i32 %523, i32 %524)
  %526 = load i32, i32* %19, align 4
  %527 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i32 %526)
  br label %652

528:                                              ; preds = %365
  %529 = load i32, i32* %19, align 4
  %530 = load i32, i32* %4, align 4
  %531 = load i32, i32* @FALSE, align 4
  %532 = call i32 @get_value_inc(i32 %529, i32 %530, i32 1, i32 %531)
  %533 = load i32, i32* %19, align 4
  %534 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i32 %533)
  br label %652

535:                                              ; preds = %365
  %536 = load i32, i32* %19, align 4
  %537 = load i32, i32* %4, align 4
  %538 = load i32, i32* @FALSE, align 4
  %539 = call i32 @get_value_inc(i32 %536, i32 %537, i32 1, i32 %538)
  %540 = load i32, i32* %19, align 4
  %541 = icmp ne i32 %540, 10
  br i1 %541, label %542, label %545

542:                                              ; preds = %535
  %543 = load i32, i32* %19, align 4
  %544 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i32 %543)
  br label %545

545:                                              ; preds = %542, %535
  br label %652

546:                                              ; preds = %365
  %547 = load i32, i32* %19, align 4
  %548 = load i32, i32* %4, align 4
  %549 = load i32, i32* @TRUE, align 4
  %550 = call i32 @get_value_inc(i32 %547, i32 %548, i32 1, i32 %549)
  %551 = load i32, i32* %7, align 4
  %552 = load i32, i32* @WORD, align 4
  %553 = icmp eq i32 %551, %552
  br i1 %553, label %554, label %557

554:                                              ; preds = %546
  %555 = load i32, i32* %19, align 4
  %556 = and i32 %555, 65535
  store i32 %556, i32* %19, align 4
  br label %557

557:                                              ; preds = %554, %546
  %558 = load i32, i32* %19, align 4
  %559 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i32 %558)
  br label %652

560:                                              ; preds = %365
  %561 = load i32, i32* %19, align 4
  %562 = load i32, i32* %4, align 4
  %563 = load i32, i32* @FALSE, align 4
  %564 = call i32 @get_value_inc(i32 %561, i32 %562, i32 2, i32 %563)
  %565 = load i32, i32* %19, align 4
  %566 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i32 %565)
  br label %652

567:                                              ; preds = %365
  %568 = load i32, i32* %8, align 4
  %569 = icmp ne i32 %568, 0
  %570 = zext i1 %569 to i64
  %571 = select i1 %569, i32 2, i32 4
  store i32 %571, i32* %21, align 4
  %572 = load i32, i32* %16, align 4
  %573 = load i32, i32* %4, align 4
  %574 = load i32, i32* %21, align 4
  %575 = load i32, i32* @FALSE, align 4
  %576 = call i32 @get_value_inc(i32 %572, i32 %573, i32 %574, i32 %575)
  %577 = load i8*, i8** %9, align 8
  %578 = icmp ne i8* %577, null
  br i1 %578, label %579, label %583

579:                                              ; preds = %567
  %580 = load i8*, i8** %9, align 8
  %581 = load i32, i32* %16, align 4
  %582 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), i8* %580, i32 %581)
  br label %587

583:                                              ; preds = %567
  %584 = load i32, i32* %16, align 4
  %585 = load i32, i32* @DB_STGY_ANY, align 4
  %586 = call i32 @db_printsym(i32 %584, i32 %585)
  br label %587

587:                                              ; preds = %583, %579
  br label %652

588:                                              ; preds = %365
  %589 = load i32, i32* %16, align 4
  %590 = load i32, i32* %4, align 4
  %591 = load i32, i32* @TRUE, align 4
  %592 = call i32 @get_value_inc(i32 %589, i32 %590, i32 1, i32 %591)
  %593 = load i32, i32* %4, align 4
  %594 = load i32, i32* %16, align 4
  %595 = add nsw i32 %594, %593
  store i32 %595, i32* %16, align 4
  %596 = load i32, i32* %7, align 4
  %597 = load i32, i32* @WORD, align 4
  %598 = icmp eq i32 %596, %597
  br i1 %598, label %599, label %602

599:                                              ; preds = %588
  %600 = load i32, i32* %16, align 4
  %601 = and i32 %600, 65535
  store i32 %601, i32* %16, align 4
  br label %602

602:                                              ; preds = %599, %588
  %603 = load i32, i32* %16, align 4
  %604 = load i32, i32* @DB_STGY_XTRN, align 4
  %605 = call i32 @db_printsym(i32 %603, i32 %604)
  br label %652

606:                                              ; preds = %365
  %607 = load i32*, i32** @db_lengths, align 8
  %608 = load i32, i32* %7, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds i32, i32* %607, i64 %609
  %611 = load i32, i32* %610, align 4
  store i32 %611, i32* %21, align 4
  %612 = load i32, i32* %16, align 4
  %613 = load i32, i32* %4, align 4
  %614 = load i32, i32* %21, align 4
  %615 = load i32, i32* @FALSE, align 4
  %616 = call i32 @get_value_inc(i32 %612, i32 %613, i32 %614, i32 %615)
  %617 = load i32, i32* %4, align 4
  %618 = load i32, i32* %16, align 4
  %619 = add nsw i32 %618, %617
  store i32 %619, i32* %16, align 4
  %620 = load i32, i32* %7, align 4
  %621 = load i32, i32* @WORD, align 4
  %622 = icmp eq i32 %620, %621
  br i1 %622, label %623, label %626

623:                                              ; preds = %606
  %624 = load i32, i32* %16, align 4
  %625 = and i32 %624, 65535
  store i32 %625, i32* %16, align 4
  br label %626

626:                                              ; preds = %623, %606
  %627 = load i32, i32* %16, align 4
  %628 = load i32, i32* @DB_STGY_XTRN, align 4
  %629 = call i32 @db_printsym(i32 %627, i32 %628)
  br label %652

630:                                              ; preds = %365
  %631 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0))
  br label %652

632:                                              ; preds = %365
  %633 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0))
  br label %652

634:                                              ; preds = %365
  %635 = load i32*, i32** @db_lengths, align 8
  %636 = load i32, i32* %7, align 4
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds i32, i32* %635, i64 %637
  %639 = load i32, i32* %638, align 4
  store i32 %639, i32* %21, align 4
  %640 = load i32, i32* %19, align 4
  %641 = load i32, i32* %4, align 4
  %642 = load i32, i32* %21, align 4
  %643 = load i32, i32* @FALSE, align 4
  %644 = call i32 @get_value_inc(i32 %640, i32 %641, i32 %642, i32 %643)
  %645 = load i32, i32* %20, align 4
  %646 = load i32, i32* %4, align 4
  %647 = load i32, i32* @FALSE, align 4
  %648 = call i32 @get_value_inc(i32 %645, i32 %646, i32 2, i32 %647)
  %649 = load i32, i32* %20, align 4
  %650 = load i32, i32* %19, align 4
  %651 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0), i32 %649, i32 %650)
  br label %652

652:                                              ; preds = %365, %634, %632, %630, %626, %602, %587, %560, %557, %545, %528, %515, %502, %498, %494, %490, %484, %478, %470, %468, %462, %447, %440, %433, %422, %411, %400, %389, %385, %381, %377, %372, %368
  br label %653

653:                                              ; preds = %652
  %654 = load i32, i32* %13, align 4
  %655 = ashr i32 %654, 8
  store i32 %655, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %357

656:                                              ; preds = %357
  %657 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %658 = load i32, i32* %4, align 4
  store i32 %658, i32* %3, align 4
  br label %659

659:                                              ; preds = %656, %108, %92
  %660 = load i32, i32* %3, align 4
  ret i32 %660
}

declare dso_local i32 @db_segsize(i32) #1

declare dso_local i32 @get_value_inc(i32, i32, i32, i32) #1

declare dso_local i32 @db_printf(i8*, ...) #1

declare dso_local i32 @db_disasm_esc(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @db_read_address(i32, i32, i32, %struct.i_addr*) #1

declare dso_local i64 @f_reg(i32) #1

declare dso_local i32 @f_mod(i32) #1

declare dso_local i32 @db_print_address(i8*, i32, %struct.i_addr*) #1

declare dso_local i64 @f_rm(i32) #1

declare dso_local i32 @db_printsym(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
