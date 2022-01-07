; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_write_inetd_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_write_inetd_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64, i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i32, %struct.TYPE_9__* }

@inetdflag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@fout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"\09if ((_rpcfdtype == 0) || (_rpcfdtype == %s)) {\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"SOCK_DGRAM\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"SOCK_STREAM\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"%s\09%s = svc%s_create(%s\00", align 1
@TRANSP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"sock\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"RPC_ANYSOCK\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c", 0, 0\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"%s\09if (%s == NULL) {\0A\00", align 1
@_errbuf = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"cannot create %s service.\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%s\09\09\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"%s\09\09exit(1);\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%s\09}\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"%s\09if (!_rpcpmstart)\0A\09\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"%s\09proto = IPPROTO_%s;\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@defined = common dso_local global %struct.TYPE_10__* null, align 8
@DEF_PROGRAM = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [34 x i8] c"%s\09if (!svc_register(%s, %s, %s, \00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c", proto)) {\0A\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c", IPPROTO_%s)) {\0A\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"unable to register (%s, %s, %s).\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"\09}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_inetd_register(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  store i8* %0, i8** %2, align 8
  %9 = load i64, i64* @inetdflag, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %13

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %13

13:                                               ; preds = %12, %11
  %14 = load i8*, i8** %2, align 8
  %15 = call i64 @streq(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 1, i32* %7, align 4
  br label %19

18:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, i32* @fout, align 4
  %21 = call i32 (i32, i8*, ...) @f_print(i32 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %22 = load i64, i64* @inetdflag, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i32, i32* @fout, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0)
  %30 = call i32 (i32, i8*, ...) @f_print(i32 %25, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %24, %19
  %32 = load i32, i32* @fout, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* @TRANSP, align 4
  %35 = load i8*, i8** %2, align 8
  %36 = load i64, i64* @inetdflag, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0)
  %40 = call i32 (i32, i8*, ...) @f_print(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %33, i32 %34, i8* %35, i8* %39)
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %31
  %44 = load i32, i32* @fout, align 4
  %45 = call i32 (i32, i8*, ...) @f_print(i32 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %31
  %47 = load i32, i32* @fout, align 4
  %48 = call i32 (i32, i8*, ...) @f_print(i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %49 = load i32, i32* @fout, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* @TRANSP, align 4
  %52 = call i32 (i32, i8*, ...) @f_print(i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* %50, i32 %51)
  %53 = load i32, i32* @_errbuf, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = load i8*, i8** %2, align 8
  %57 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i8* %56)
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %59)
  %61 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %62 = call i32 @print_err_message(i8* %61)
  %63 = load i32, i32* @fout, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 (i32, i8*, ...) @f_print(i32 %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* @fout, align 4
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 (i32, i8*, ...) @f_print(i32 %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* %67)
  %69 = load i64, i64* @inetdflag, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %46
  %72 = load i32, i32* @fout, align 4
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 (i32, i8*, ...) @f_print(i32 %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* @fout, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0)
  %81 = call i32 (i32, i8*, ...) @f_print(i32 %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i8* %76, i8* %80)
  br label %82

82:                                               ; preds = %71, %46
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** @defined, align 8
  store %struct.TYPE_10__* %83, %struct.TYPE_10__** %3, align 8
  br label %84

84:                                               ; preds = %162, %82
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %86 = icmp ne %struct.TYPE_10__* %85, null
  br i1 %86, label %87, label %166

87:                                               ; preds = %84
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %91, %struct.TYPE_11__** %4, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @DEF_PROGRAM, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %162

98:                                               ; preds = %87
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  store %struct.TYPE_9__* %103, %struct.TYPE_9__** %5, align 8
  br label %104

104:                                              ; preds = %157, %98
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %106 = icmp ne %struct.TYPE_9__* %105, null
  br i1 %106, label %107, label %161

107:                                              ; preds = %104
  %108 = load i32, i32* @fout, align 4
  %109 = load i8*, i8** %6, align 8
  %110 = load i32, i32* @TRANSP, align 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 (i32, i8*, ...) @f_print(i32 %108, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), i8* %109, i32 %110, i8* %113, i8* %116)
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @pvname(i8* %120, i32 %123)
  %125 = load i64, i64* @inetdflag, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %107
  %128 = load i32, i32* @fout, align 4
  %129 = call i32 (i32, i8*, ...) @f_print(i32 %128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  br label %137

130:                                              ; preds = %107
  %131 = load i32, i32* @fout, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0)
  %136 = call i32 (i32, i8*, ...) @f_print(i32 %131, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i8* %135)
  br label %137

137:                                              ; preds = %130, %127
  %138 = load i32, i32* @_errbuf, align 4
  %139 = sext i32 %138 to i64
  %140 = inttoptr i64 %139 to i8*
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load i8*, i8** %2, align 8
  %148 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %140, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0), i8* %143, i8* %146, i8* %147)
  %149 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %150 = call i32 @print_err_message(i8* %149)
  %151 = load i32, i32* @fout, align 4
  %152 = load i8*, i8** %6, align 8
  %153 = call i32 (i32, i8*, ...) @f_print(i32 %151, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %152)
  %154 = load i32, i32* @fout, align 4
  %155 = load i8*, i8** %6, align 8
  %156 = call i32 (i32, i8*, ...) @f_print(i32 %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* %155)
  br label %157

157:                                              ; preds = %137
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  store %struct.TYPE_9__* %160, %struct.TYPE_9__** %5, align 8
  br label %104

161:                                              ; preds = %104
  br label %162

162:                                              ; preds = %161, %97
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  store %struct.TYPE_10__* %165, %struct.TYPE_10__** %3, align 8
  br label %84

166:                                              ; preds = %84
  %167 = load i64, i64* @inetdflag, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i32, i32* @fout, align 4
  %171 = call i32 (i32, i8*, ...) @f_print(i32 %170, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  br label %172

172:                                              ; preds = %169, %166
  ret void
}

declare dso_local i64 @streq(i8*, i8*) #1

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
