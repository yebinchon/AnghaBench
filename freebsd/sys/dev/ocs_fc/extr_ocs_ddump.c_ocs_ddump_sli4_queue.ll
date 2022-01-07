; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_ddump.c_ocs_ddump_sli4_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_ddump.c_ocs_ddump_sli4_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { i64, i32** }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_11__, %struct.TYPE_10__, i64 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"n_posted\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"proc_limit\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"posted_limit\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"max_num_processed\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"max_process_time\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"virt_addr\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"phys_addr\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"r_idx\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"is_mq\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"is_hdr\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"rq_batch\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"rqes_produced\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.TYPE_13__*, %struct.TYPE_12__*, i64, i64)* @ocs_ddump_sli4_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocs_ddump_sli4_queue(i32* %0, i8* %1, %struct.TYPE_13__* %2, %struct.TYPE_12__* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %18

18:                                               ; preds = %198, %6
  %19 = load i64, i64* %13, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %203

22:                                               ; preds = %18
  %23 = load i32*, i32** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i64, i64* %13, align 8
  %26 = call i32 @ocs_ddump_section(i32* %23, i8* %24, i64 %25)
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @ocs_ddump_value(i32* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @ocs_ddump_value(i32* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @ocs_ddump_value(i32* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = load i32*, i32** %7, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @ocs_ddump_value(i32* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @ocs_ddump_value(i32* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = load i32*, i32** %7, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @ocs_ddump_value(i32* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  %57 = load i32*, i32** %7, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @ocs_ddump_value(i32* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 7
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @ocs_ddump_value(i32* %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  %67 = load i32*, i32** %7, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 8
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @ocs_ddump_value(i32* %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %70)
  %72 = load i32*, i32** %7, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 11
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @ocs_ddump_value(i32* %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i64 %75)
  %77 = load i32*, i32** %7, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 10
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @ocs_ddump_value(i32* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i64 %81)
  %83 = load i32*, i32** %7, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 10
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @ocs_ddump_value(i32* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 %87)
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  switch i64 %91, label %165 [
    i64 130, label %92
    i64 131, label %99
    i64 128, label %107
    i64 129, label %108
  ]

92:                                               ; preds = %22
  %93 = load i32*, i32** %7, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 9
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @ocs_ddump_value(i32* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %97)
  br label %165

99:                                               ; preds = %22
  %100 = load i32*, i32** %7, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 9
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @ocs_ddump_value(i32* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %105)
  br label %165

107:                                              ; preds = %22
  br label %165

108:                                              ; preds = %22
  store i64 0, i64* %16, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 9
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @ocs_ddump_value(i32* %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %114)
  %116 = load i32*, i32** %7, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 9
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @ocs_ddump_value(i32* %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %121)
  store i64 0, i64* %14, align 8
  br label %123

123:                                              ; preds = %158, %108
  %124 = load i64, i64* %14, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp slt i64 %124, %127
  br i1 %128, label %129, label %161

129:                                              ; preds = %123
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %131, align 8
  %133 = load i64, i64* %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %132, i64 %133
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  store %struct.TYPE_14__* %135, %struct.TYPE_14__** %17, align 8
  store i64 0, i64* %15, align 8
  br label %136

136:                                              ; preds = %154, %129
  %137 = load i64, i64* %15, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp slt i64 %137, %140
  br i1 %141, label %142, label %157

142:                                              ; preds = %136
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  %145 = load i32**, i32*** %144, align 8
  %146 = load i64, i64* %15, align 8
  %147 = getelementptr inbounds i32*, i32** %145, i64 %146
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = load i64, i64* %16, align 8
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %16, align 8
  br label %153

153:                                              ; preds = %150, %142
  br label %154

154:                                              ; preds = %153
  %155 = load i64, i64* %15, align 8
  %156 = add nsw i64 %155, 1
  store i64 %156, i64* %15, align 8
  br label %136

157:                                              ; preds = %136
  br label %158

158:                                              ; preds = %157
  %159 = load i64, i64* %14, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %14, align 8
  br label %123

161:                                              ; preds = %123
  %162 = load i32*, i32** %7, align 8
  %163 = load i64, i64* %16, align 8
  %164 = call i32 @ocs_ddump_value(i32* %162, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %163)
  br label %165

165:                                              ; preds = %22, %161, %107, %99, %92
  %166 = load i32*, i32** %7, align 8
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 10
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 5
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %179, 130
  br i1 %180, label %181, label %186

181:                                              ; preds = %165
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 9
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  br label %190

186:                                              ; preds = %165
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  br label %190

190:                                              ; preds = %186, %181
  %191 = phi i64 [ %185, %181 ], [ %189, %186 ]
  %192 = load i64, i64* %12, align 8
  %193 = call i32 @ocs_ddump_queue_entries(i32* %166, i64 %170, i64 %173, i64 %176, i64 %191, i64 %192)
  %194 = load i32*, i32** %7, align 8
  %195 = load i8*, i8** %8, align 8
  %196 = load i64, i64* %13, align 8
  %197 = call i32 @ocs_ddump_endsection(i32* %194, i8* %195, i64 %196)
  br label %198

198:                                              ; preds = %190
  %199 = load i64, i64* %13, align 8
  %200 = add nsw i64 %199, 1
  store i64 %200, i64* %13, align 8
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 1
  store %struct.TYPE_12__* %202, %struct.TYPE_12__** %10, align 8
  br label %18

203:                                              ; preds = %18
  ret void
}

declare dso_local i32 @ocs_ddump_section(i32*, i8*, i64) #1

declare dso_local i32 @ocs_ddump_value(i32*, i8*, i8*, i64) #1

declare dso_local i32 @ocs_ddump_queue_entries(i32*, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ocs_ddump_endsection(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
