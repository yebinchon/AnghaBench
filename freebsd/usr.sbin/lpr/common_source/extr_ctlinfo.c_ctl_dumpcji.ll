; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_ctlinfo.c_ctl_dumpcji.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_ctlinfo.c_ctl_dumpcji.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cjobinfo = type { %struct.cjprivate* }
%struct.cjprivate = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"ctl_dumpcji: ptr to cjobinfo for '%s' is NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"ctl_dumpcji: Dump '%s' of cjobinfo at %p->%p\0A\00", align 1
@ctl_dbgline = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"%4d] %12s = \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"accthost.H\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%p -> %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"acctuser.P\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"class.C\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"cf-qname\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"cf-fname\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"jobname.J\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"mailto.M\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"headruser.L\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"*cjprivate\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"NULL !!\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"|- - - - --> Dump '%s' complete\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_dumpcji(i32* %0, i8* %1, %struct.cjobinfo* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cjobinfo*, align 8
  %7 = alloca %struct.cjprivate*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.cjobinfo* %2, %struct.cjobinfo** %6, align 8
  %9 = load %struct.cjobinfo*, %struct.cjobinfo** %6, align 8
  %10 = icmp eq %struct.cjobinfo* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32*, i32** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 (i32*, i8*, ...) @fprintf(i32* %12, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %230

15:                                               ; preds = %3
  %16 = load %struct.cjobinfo*, %struct.cjobinfo** %6, align 8
  %17 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %16, i32 0, i32 0
  %18 = load %struct.cjprivate*, %struct.cjprivate** %17, align 8
  store %struct.cjprivate* %18, %struct.cjprivate** %7, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.cjobinfo*, %struct.cjobinfo** %6, align 8
  %22 = bitcast %struct.cjobinfo* %21 to i8*
  %23 = load %struct.cjprivate*, %struct.cjprivate** %7, align 8
  %24 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %20, i8* %22, i32 %25)
  %27 = load %struct.cjprivate*, %struct.cjprivate** %7, align 8
  %28 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %8, align 8
  %33 = load i32, i32* @ctl_dbgline, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @ctl_dbgline, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @ctl_dbgline, align 4
  %37 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i8*, i8** %8, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %15
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 (i32*, i8*, ...) @fprintf(i32* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %48

43:                                               ; preds = %15
  %44 = load i32*, i32** %4, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %45, i8* %46)
  br label %48

48:                                               ; preds = %43, %40
  %49 = load %struct.cjprivate*, %struct.cjprivate** %7, align 8
  %50 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %8, align 8
  %55 = load i32, i32* @ctl_dbgline, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @ctl_dbgline, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @ctl_dbgline, align 4
  %59 = call i32 (i32*, i8*, ...) @fprintf(i32* %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %60 = load i8*, i8** %8, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 (i32*, i8*, ...) @fprintf(i32* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %70

65:                                               ; preds = %48
  %66 = load i32*, i32** %4, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 (i32*, i8*, ...) @fprintf(i32* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %67, i8* %68)
  br label %70

70:                                               ; preds = %65, %62
  %71 = load %struct.cjprivate*, %struct.cjprivate** %7, align 8
  %72 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  store i8* %76, i8** %8, align 8
  %77 = load i32, i32* @ctl_dbgline, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @ctl_dbgline, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* @ctl_dbgline, align 4
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %82 = load i8*, i8** %8, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %70
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 (i32*, i8*, ...) @fprintf(i32* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %92

87:                                               ; preds = %70
  %88 = load i32*, i32** %4, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 (i32*, i8*, ...) @fprintf(i32* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %89, i8* %90)
  br label %92

92:                                               ; preds = %87, %84
  %93 = load %struct.cjprivate*, %struct.cjprivate** %7, align 8
  %94 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  store i8* %98, i8** %8, align 8
  %99 = load i32, i32* @ctl_dbgline, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* @ctl_dbgline, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = load i32, i32* @ctl_dbgline, align 4
  %103 = call i32 (i32*, i8*, ...) @fprintf(i32* %101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %104 = load i8*, i8** %8, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %92
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 (i32*, i8*, ...) @fprintf(i32* %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %114

109:                                              ; preds = %92
  %110 = load i32*, i32** %4, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 (i32*, i8*, ...) @fprintf(i32* %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %111, i8* %112)
  br label %114

114:                                              ; preds = %109, %106
  %115 = load %struct.cjprivate*, %struct.cjprivate** %7, align 8
  %116 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to i8*
  store i8* %120, i8** %8, align 8
  %121 = load i32, i32* @ctl_dbgline, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* @ctl_dbgline, align 4
  %123 = load i32*, i32** %4, align 8
  %124 = load i32, i32* @ctl_dbgline, align 4
  %125 = call i32 (i32*, i8*, ...) @fprintf(i32* %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %124, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %126 = load i8*, i8** %8, align 8
  %127 = icmp eq i8* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %114
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 (i32*, i8*, ...) @fprintf(i32* %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %136

131:                                              ; preds = %114
  %132 = load i32*, i32** %4, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = load i8*, i8** %8, align 8
  %135 = call i32 (i32*, i8*, ...) @fprintf(i32* %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %133, i8* %134)
  br label %136

136:                                              ; preds = %131, %128
  %137 = load %struct.cjprivate*, %struct.cjprivate** %7, align 8
  %138 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to i8*
  store i8* %142, i8** %8, align 8
  %143 = load i32, i32* @ctl_dbgline, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* @ctl_dbgline, align 4
  %145 = load i32*, i32** %4, align 8
  %146 = load i32, i32* @ctl_dbgline, align 4
  %147 = call i32 (i32*, i8*, ...) @fprintf(i32* %145, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %146, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %148 = load i8*, i8** %8, align 8
  %149 = icmp eq i8* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %136
  %151 = load i32*, i32** %4, align 8
  %152 = call i32 (i32*, i8*, ...) @fprintf(i32* %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %158

153:                                              ; preds = %136
  %154 = load i32*, i32** %4, align 8
  %155 = load i8*, i8** %8, align 8
  %156 = load i8*, i8** %8, align 8
  %157 = call i32 (i32*, i8*, ...) @fprintf(i32* %154, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %155, i8* %156)
  br label %158

158:                                              ; preds = %153, %150
  %159 = load %struct.cjprivate*, %struct.cjprivate** %7, align 8
  %160 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = inttoptr i64 %163 to i8*
  store i8* %164, i8** %8, align 8
  %165 = load i32, i32* @ctl_dbgline, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* @ctl_dbgline, align 4
  %167 = load i32*, i32** %4, align 8
  %168 = load i32, i32* @ctl_dbgline, align 4
  %169 = call i32 (i32*, i8*, ...) @fprintf(i32* %167, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %170 = load i8*, i8** %8, align 8
  %171 = icmp eq i8* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %158
  %173 = load i32*, i32** %4, align 8
  %174 = call i32 (i32*, i8*, ...) @fprintf(i32* %173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %180

175:                                              ; preds = %158
  %176 = load i32*, i32** %4, align 8
  %177 = load i8*, i8** %8, align 8
  %178 = load i8*, i8** %8, align 8
  %179 = call i32 (i32*, i8*, ...) @fprintf(i32* %176, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %177, i8* %178)
  br label %180

180:                                              ; preds = %175, %172
  %181 = load %struct.cjprivate*, %struct.cjprivate** %7, align 8
  %182 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = inttoptr i64 %185 to i8*
  store i8* %186, i8** %8, align 8
  %187 = load i32, i32* @ctl_dbgline, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* @ctl_dbgline, align 4
  %189 = load i32*, i32** %4, align 8
  %190 = load i32, i32* @ctl_dbgline, align 4
  %191 = call i32 (i32*, i8*, ...) @fprintf(i32* %189, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %190, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %192 = load i8*, i8** %8, align 8
  %193 = icmp eq i8* %192, null
  br i1 %193, label %194, label %197

194:                                              ; preds = %180
  %195 = load i32*, i32** %4, align 8
  %196 = call i32 (i32*, i8*, ...) @fprintf(i32* %195, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %202

197:                                              ; preds = %180
  %198 = load i32*, i32** %4, align 8
  %199 = load i8*, i8** %8, align 8
  %200 = load i8*, i8** %8, align 8
  %201 = call i32 (i32*, i8*, ...) @fprintf(i32* %198, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %199, i8* %200)
  br label %202

202:                                              ; preds = %197, %194
  %203 = load i32, i32* @ctl_dbgline, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* @ctl_dbgline, align 4
  %205 = load i32*, i32** %4, align 8
  %206 = load i32, i32* @ctl_dbgline, align 4
  %207 = call i32 (i32*, i8*, ...) @fprintf(i32* %205, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %206, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %208 = load %struct.cjprivate*, %struct.cjprivate** %7, align 8
  %209 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = icmp eq i32* %211, null
  br i1 %212, label %213, label %216

213:                                              ; preds = %202
  %214 = load i32*, i32** %4, align 8
  %215 = call i32 (i32*, i8*, ...) @fprintf(i32* %214, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  br label %224

216:                                              ; preds = %202
  %217 = load i32*, i32** %4, align 8
  %218 = load %struct.cjprivate*, %struct.cjprivate** %7, align 8
  %219 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = bitcast i32* %221 to i8*
  %223 = call i32 (i32*, i8*, ...) @fprintf(i32* %217, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %222)
  br label %224

224:                                              ; preds = %216, %213
  %225 = load i32*, i32** %4, align 8
  %226 = load i8*, i8** %5, align 8
  %227 = call i32 (i32*, i8*, ...) @fprintf(i32* %225, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i8* %226)
  %228 = load i32*, i32** %4, align 8
  %229 = call i32 @fflush(i32* %228)
  br label %230

230:                                              ; preds = %224, %11
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
