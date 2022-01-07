; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_write_netid_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_write_netid_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64, i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i32, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@fout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%s\09nconf = getnetconfigent(\22%s\22);\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%s\09if (nconf == NULL) {\0A\00", align 1
@_errbuf = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"cannot find %s netid.\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s\09\09\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"%s\09\09exit(1);\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s\09}\0A\00", align 1
@tirpcflag = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [35 x i8] c"%s\09%s = svc_tli_create(RPC_ANYFD, \00", align 1
@TRANSP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [46 x i8] c"nconf, 0, RPC_MAXDATASIZE, RPC_MAXDATASIZE);\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"%s\09%s = svc_tli_create(RPC_ANYFD, nconf, 0, 0, 0);\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"%s\09if (%s == NULL) {\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"cannot create %s service.\00", align 1
@defined = common dso_local global %struct.TYPE_10__* null, align 8
@DEF_PROGRAM = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [38 x i8] c"%s\09(void) rpcb_unset(%s, %s, nconf);\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"%s\09if (!svc_reg(%s, %s, %s, \00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c", nconf)) {\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"unable to register (%s, %s, %s).\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"%s\09freenetconfigent(nconf);\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_netid_register(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [32 x i8], align 16
  store i8* %0, i8** %2, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %8 = load i32, i32* @fout, align 4
  %9 = call i32 (i32, i8*, ...) @f_print(i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* @fout, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 (i32, i8*, ...) @f_print(i32 %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %11, i8* %12)
  %14 = load i32, i32* @fout, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 (i32, i8*, ...) @f_print(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* @_errbuf, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %20)
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %23)
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %26 = call i32 @print_err_message(i8* %25)
  %27 = load i32, i32* @fout, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 (i32, i8*, ...) @f_print(i32 %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @fout, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 (i32, i8*, ...) @f_print(i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %31)
  %33 = load i64, i64* @tirpcflag, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %1
  %36 = load i32, i32* @fout, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* @TRANSP, align 4
  %39 = call i32 (i32, i8*, ...) @f_print(i32 %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i8* %37, i32 %38)
  %40 = load i32, i32* @fout, align 4
  %41 = call i32 (i32, i8*, ...) @f_print(i32 %40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  br label %47

42:                                               ; preds = %1
  %43 = load i32, i32* @fout, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* @TRANSP, align 4
  %46 = call i32 (i32, i8*, ...) @f_print(i32 %43, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i8* %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %35
  %48 = load i32, i32* @fout, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* @TRANSP, align 4
  %51 = call i32 (i32, i8*, ...) @f_print(i32 %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* %49, i32 %50)
  %52 = load i32, i32* @_errbuf, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = load i8*, i8** %2, align 8
  %56 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i8* %55)
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %58 = call i32 @print_err_message(i8* %57)
  %59 = load i32, i32* @fout, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 (i32, i8*, ...) @f_print(i32 %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %60)
  %62 = load i32, i32* @fout, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 (i32, i8*, ...) @f_print(i32 %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** @defined, align 8
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** %3, align 8
  br label %66

66:                                               ; preds = %142, %47
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = icmp ne %struct.TYPE_10__* %67, null
  br i1 %68, label %69, label %146

69:                                               ; preds = %66
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %73, %struct.TYPE_11__** %4, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DEF_PROGRAM, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  br label %142

80:                                               ; preds = %69
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  store %struct.TYPE_9__* %85, %struct.TYPE_9__** %5, align 8
  br label %86

86:                                               ; preds = %137, %80
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %88 = icmp ne %struct.TYPE_9__* %87, null
  br i1 %88, label %89, label %141

89:                                               ; preds = %86
  %90 = load i32, i32* @fout, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (i32, i8*, ...) @f_print(i32 %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i8* %91, i8* %94, i8* %97)
  %99 = load i32, i32* @fout, align 4
  %100 = load i8*, i8** %6, align 8
  %101 = load i32, i32* @TRANSP, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (i32, i8*, ...) @f_print(i32 %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i8* %100, i32 %101, i8* %104, i8* %107)
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @pvname(i8* %111, i32 %114)
  %116 = load i32, i32* @fout, align 4
  %117 = call i32 (i32, i8*, ...) @f_print(i32 %116, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %118 = load i32, i32* @_errbuf, align 4
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to i8*
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load i8*, i8** %2, align 8
  %128 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %120, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i8* %123, i8* %126, i8* %127)
  %129 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %130 = call i32 @print_err_message(i8* %129)
  %131 = load i32, i32* @fout, align 4
  %132 = load i8*, i8** %6, align 8
  %133 = call i32 (i32, i8*, ...) @f_print(i32 %131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %132)
  %134 = load i32, i32* @fout, align 4
  %135 = load i8*, i8** %6, align 8
  %136 = call i32 (i32, i8*, ...) @f_print(i32 %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %135)
  br label %137

137:                                              ; preds = %89
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  store %struct.TYPE_9__* %140, %struct.TYPE_9__** %5, align 8
  br label %86

141:                                              ; preds = %86
  br label %142

142:                                              ; preds = %141, %79
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  store %struct.TYPE_10__* %145, %struct.TYPE_10__** %3, align 8
  br label %66

146:                                              ; preds = %66
  %147 = load i32, i32* @fout, align 4
  %148 = load i8*, i8** %6, align 8
  %149 = call i32 (i32, i8*, ...) @f_print(i32 %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i8* %148)
  ret void
}

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @print_err_message(i8*) #1

declare dso_local i32 @pvname(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
