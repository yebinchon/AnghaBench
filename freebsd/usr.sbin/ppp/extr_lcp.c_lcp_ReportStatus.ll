; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lcp.c_lcp_ReportStatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lcp.c_lcp_ReportStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32 }
%struct.link = type { i32, %struct.lcp }
%struct.lcp = type { %struct.TYPE_6__, i32, i64, i32, i64, i64, i64, i64, i32, i32, i64, i32, i64, i64, i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s: %s [%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [118 x i8] c" his side: MRU %d, ACCMAP %08lx, PROTOCOMP %s, ACFCOMP %s,\0A           MAGIC %08lx, MRRU %u, SHORTSEQ %s, REJECT %04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.4 = private unnamed_addr constant [118 x i8] c" my  side: MRU %d, ACCMAP %08lx, PROTOCOMP %s, ACFCOMP %s,\0A           MAGIC %08lx, MRRU %u, SHORTSEQ %s, REJECT %04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"\0A Defaults: MRU = %d (max %d), \00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"\0A Defaults: MRU = any (max %d), \00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"MTU = %d (max %d), \00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"MTU = any (max %d), \00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"ACCMAP = %08lx\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"           LQR period = %us, \00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Open Mode = %s\00", align 1
@OPEN_PASSIVE = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"passive\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c" (delay %ds)\00", align 1
@.str.15 = private unnamed_addr constant [65 x i8] c"\0A           FSM retry = %us, max %u Config REQ%s, %u Term REQ%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"    Ident: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"\0A Negotiation:\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"           ACFCOMP =   %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"           CHAP =      %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"           CHAP80 =    %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"           LANMan =    %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"           CHAP81 =    %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"           LQR =       %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"           LCP ECHO =  %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"           PAP =       %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"           PROTOCOMP = %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lcp_ReportStatus(%struct.cmdargs* %0) #0 {
  %2 = alloca %struct.cmdargs*, align 8
  %3 = alloca %struct.link*, align 8
  %4 = alloca %struct.lcp*, align 8
  store %struct.cmdargs* %0, %struct.cmdargs** %2, align 8
  %5 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %6 = call %struct.link* @command_ChooseLink(%struct.cmdargs* %5)
  store %struct.link* %6, %struct.link** %3, align 8
  %7 = load %struct.link*, %struct.link** %3, align 8
  %8 = getelementptr inbounds %struct.link, %struct.link* %7, i32 0, i32 1
  store %struct.lcp* %8, %struct.lcp** %4, align 8
  %9 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %10 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.link*, %struct.link** %3, align 8
  %13 = getelementptr inbounds %struct.link, %struct.link* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.lcp*, %struct.lcp** %4, align 8
  %16 = getelementptr inbounds %struct.lcp, %struct.lcp* %15, i32 0, i32 17
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.lcp*, %struct.lcp** %4, align 8
  %20 = getelementptr inbounds %struct.lcp, %struct.lcp* %19, i32 0, i32 17
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @State2Nam(i32 %22)
  %24 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18, i32 %23)
  %25 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %26 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.lcp*, %struct.lcp** %4, align 8
  %29 = getelementptr inbounds %struct.lcp, %struct.lcp* %28, i32 0, i32 16
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.lcp*, %struct.lcp** %4, align 8
  %32 = getelementptr inbounds %struct.lcp, %struct.lcp* %31, i32 0, i32 15
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.lcp*, %struct.lcp** %4, align 8
  %36 = getelementptr inbounds %struct.lcp, %struct.lcp* %35, i32 0, i32 14
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %41 = load %struct.lcp*, %struct.lcp** %4, align 8
  %42 = getelementptr inbounds %struct.lcp, %struct.lcp* %41, i32 0, i32 13
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %47 = load %struct.lcp*, %struct.lcp** %4, align 8
  %48 = getelementptr inbounds %struct.lcp, %struct.lcp* %47, i32 0, i32 12
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.lcp*, %struct.lcp** %4, align 8
  %52 = getelementptr inbounds %struct.lcp, %struct.lcp* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.lcp*, %struct.lcp** %4, align 8
  %55 = getelementptr inbounds %struct.lcp, %struct.lcp* %54, i32 0, i32 10
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %60 = load %struct.lcp*, %struct.lcp** %4, align 8
  %61 = getelementptr inbounds %struct.lcp, %struct.lcp* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %27, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.1, i64 0, i64 0), i32 %30, i8* %34, i8* %40, i8* %46, i8* %50, i32 %53, i8* %59, i32 %62)
  %64 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %65 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.lcp*, %struct.lcp** %4, align 8
  %68 = getelementptr inbounds %struct.lcp, %struct.lcp* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.lcp*, %struct.lcp** %4, align 8
  %71 = getelementptr inbounds %struct.lcp, %struct.lcp* %70, i32 0, i32 7
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.lcp*, %struct.lcp** %4, align 8
  %75 = getelementptr inbounds %struct.lcp, %struct.lcp* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %80 = load %struct.lcp*, %struct.lcp** %4, align 8
  %81 = getelementptr inbounds %struct.lcp, %struct.lcp* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %86 = load %struct.lcp*, %struct.lcp** %4, align 8
  %87 = getelementptr inbounds %struct.lcp, %struct.lcp* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = load %struct.lcp*, %struct.lcp** %4, align 8
  %91 = getelementptr inbounds %struct.lcp, %struct.lcp* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.lcp*, %struct.lcp** %4, align 8
  %94 = getelementptr inbounds %struct.lcp, %struct.lcp* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %99 = load %struct.lcp*, %struct.lcp** %4, align 8
  %100 = getelementptr inbounds %struct.lcp, %struct.lcp* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %66, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.4, i64 0, i64 0), i32 %69, i8* %73, i8* %79, i8* %85, i8* %89, i32 %92, i8* %98, i32 %101)
  %103 = load %struct.lcp*, %struct.lcp** %4, align 8
  %104 = getelementptr inbounds %struct.lcp, %struct.lcp* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 17
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %1
  %109 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %110 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.lcp*, %struct.lcp** %4, align 8
  %113 = getelementptr inbounds %struct.lcp, %struct.lcp* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 17
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.lcp*, %struct.lcp** %4, align 8
  %117 = getelementptr inbounds %struct.lcp, %struct.lcp* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %111, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %115, i8* %119)
  br label %130

121:                                              ; preds = %1
  %122 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %123 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.lcp*, %struct.lcp** %4, align 8
  %126 = getelementptr inbounds %struct.lcp, %struct.lcp* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %124, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %128)
  br label %130

130:                                              ; preds = %121, %108
  %131 = load %struct.lcp*, %struct.lcp** %4, align 8
  %132 = getelementptr inbounds %struct.lcp, %struct.lcp* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 16
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %130
  %137 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %138 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.lcp*, %struct.lcp** %4, align 8
  %141 = getelementptr inbounds %struct.lcp, %struct.lcp* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 16
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.lcp*, %struct.lcp** %4, align 8
  %145 = getelementptr inbounds %struct.lcp, %struct.lcp* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %139, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i64 %143, i8* %147)
  br label %158

149:                                              ; preds = %130
  %150 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %151 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.lcp*, %struct.lcp** %4, align 8
  %154 = getelementptr inbounds %struct.lcp, %struct.lcp* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %152, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %156)
  br label %158

158:                                              ; preds = %149, %136
  %159 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %160 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.lcp*, %struct.lcp** %4, align 8
  %163 = getelementptr inbounds %struct.lcp, %struct.lcp* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 15
  %165 = load i64, i64* %164, align 8
  %166 = inttoptr i64 %165 to i8*
  %167 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %161, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %166)
  %168 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %169 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.lcp*, %struct.lcp** %4, align 8
  %172 = getelementptr inbounds %struct.lcp, %struct.lcp* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 2
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %170, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %174)
  %176 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %177 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.lcp*, %struct.lcp** %4, align 8
  %180 = getelementptr inbounds %struct.lcp, %struct.lcp* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 3
  %182 = load i8*, i8** %181, align 8
  %183 = load i8*, i8** @OPEN_PASSIVE, align 8
  %184 = icmp eq i8* %182, %183
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)
  %187 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %178, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* %186)
  %188 = load %struct.lcp*, %struct.lcp** %4, align 8
  %189 = getelementptr inbounds %struct.lcp, %struct.lcp* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 3
  %191 = load i8*, i8** %190, align 8
  %192 = icmp ugt i8* %191, null
  br i1 %192, label %193, label %202

193:                                              ; preds = %158
  %194 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %195 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.lcp*, %struct.lcp** %4, align 8
  %198 = getelementptr inbounds %struct.lcp, %struct.lcp* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 3
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %196, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* %200)
  br label %202

202:                                              ; preds = %193, %158
  %203 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %204 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.lcp*, %struct.lcp** %4, align 8
  %207 = getelementptr inbounds %struct.lcp, %struct.lcp* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 14
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.lcp*, %struct.lcp** %4, align 8
  %212 = getelementptr inbounds %struct.lcp, %struct.lcp* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 14
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.lcp*, %struct.lcp** %4, align 8
  %217 = getelementptr inbounds %struct.lcp, %struct.lcp* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 14
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %220, 1
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)
  %224 = load %struct.lcp*, %struct.lcp** %4, align 8
  %225 = getelementptr inbounds %struct.lcp, %struct.lcp* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 14
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.lcp*, %struct.lcp** %4, align 8
  %230 = getelementptr inbounds %struct.lcp, %struct.lcp* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 14
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = icmp eq i32 %233, 1
  %235 = zext i1 %234 to i64
  %236 = select i1 %234, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)
  %237 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %205, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.15, i64 0, i64 0), i32 %210, i32 %215, i8* %223, i32 %228, i8* %236)
  %238 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %239 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.lcp*, %struct.lcp** %4, align 8
  %242 = getelementptr inbounds %struct.lcp, %struct.lcp* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 4
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %240, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8* %244)
  %246 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %247 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %248, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0))
  %250 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %251 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.lcp*, %struct.lcp** %4, align 8
  %254 = getelementptr inbounds %struct.lcp, %struct.lcp* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 13
  %256 = load i32, i32* %255, align 4
  %257 = call i8* @command_ShowNegval(i32 %256)
  %258 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %252, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i8* %257)
  %259 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %260 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.lcp*, %struct.lcp** %4, align 8
  %263 = getelementptr inbounds %struct.lcp, %struct.lcp* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 12
  %265 = load i32, i32* %264, align 8
  %266 = call i8* @command_ShowNegval(i32 %265)
  %267 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %261, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0), i8* %266)
  %268 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %269 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.lcp*, %struct.lcp** %4, align 8
  %272 = getelementptr inbounds %struct.lcp, %struct.lcp* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 11
  %274 = load i32, i32* %273, align 4
  %275 = call i8* @command_ShowNegval(i32 %274)
  %276 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %270, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i8* %275)
  %277 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %278 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.lcp*, %struct.lcp** %4, align 8
  %281 = getelementptr inbounds %struct.lcp, %struct.lcp* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 10
  %283 = load i32, i32* %282, align 8
  %284 = call i8* @command_ShowNegval(i32 %283)
  %285 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %279, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i8* %284)
  %286 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %287 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.lcp*, %struct.lcp** %4, align 8
  %290 = getelementptr inbounds %struct.lcp, %struct.lcp* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 9
  %292 = load i32, i32* %291, align 4
  %293 = call i8* @command_ShowNegval(i32 %292)
  %294 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %288, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0), i8* %293)
  %295 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %296 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.lcp*, %struct.lcp** %4, align 8
  %299 = getelementptr inbounds %struct.lcp, %struct.lcp* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 8
  %301 = load i32, i32* %300, align 8
  %302 = call i8* @command_ShowNegval(i32 %301)
  %303 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %297, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0), i8* %302)
  %304 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %305 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.lcp*, %struct.lcp** %4, align 8
  %308 = getelementptr inbounds %struct.lcp, %struct.lcp* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 7
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  %312 = zext i1 %311 to i64
  %313 = select i1 %311, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0)
  %314 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %306, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i8* %313)
  %315 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %316 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.lcp*, %struct.lcp** %4, align 8
  %319 = getelementptr inbounds %struct.lcp, %struct.lcp* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 6
  %321 = load i32, i32* %320, align 4
  %322 = call i8* @command_ShowNegval(i32 %321)
  %323 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %317, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0), i8* %322)
  %324 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %325 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.lcp*, %struct.lcp** %4, align 8
  %328 = getelementptr inbounds %struct.lcp, %struct.lcp* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 5
  %330 = load i32, i32* %329, align 8
  %331 = call i8* @command_ShowNegval(i32 %330)
  %332 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %326, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0), i8* %331)
  ret i32 0
}

declare dso_local %struct.link* @command_ChooseLink(%struct.cmdargs*) #1

declare dso_local i32 @prompt_Printf(i32, i8*, ...) #1

declare dso_local i32 @State2Nam(i32) #1

declare dso_local i8* @command_ShowNegval(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
