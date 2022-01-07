; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/spray/extr_spray.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/spray/extr_spray.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { double, double }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"c:d:l:\00", align 1
@optarg = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@SPRAYMAX = common dso_local global i32 0, align 4
@SPRAYOVERHEAD = common dso_local global i32 0, align 4
@spray_buffer = common dso_local global i32 0, align 4
@SPRAYPROG = common dso_local global i32 0, align 4
@SPRAYVERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CLSET_TIMEOUT = common dso_local global i32 0, align 4
@NO_DEFAULT = common dso_local global i32 0, align 4
@SPRAYPROC_CLEAR = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@TIMEOUT = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"sending %u packets of length %d to %s ...\00", align 1
@stdout = common dso_local global i32 0, align 4
@SPRAYPROC_SPRAY = common dso_local global i32 0, align 4
@xdr_sprayarr = common dso_local global i64 0, align 8
@ONE_WAY = common dso_local global i32 0, align 4
@SPRAYPROC_GET = common dso_local global i32 0, align 4
@xdr_spraycumul = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"\0A\09in %.2f seconds elapsed time\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"\09%d packets (%.2f%%) dropped\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"\09no packets dropped\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Sent:\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Rcvd:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %34, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %9, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load i32, i32* %9, align 4
  switch i32 %22, label %32 [
    i32 99, label %23
    i32 100, label %26
    i32 108, label %29
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* @optarg, align 4
  %25 = call i32 @atoi(i32 %24)
  store i32 %25, i32* %11, align 4
  br label %34

26:                                               ; preds = %21
  %27 = load i32, i32* @optarg, align 4
  %28 = call i32 @atoi(i32 %27)
  store i32 %28, i32* %12, align 4
  br label %34

29:                                               ; preds = %21
  %30 = load i32, i32* @optarg, align 4
  %31 = call i32 @atoi(i32 %30)
  store i32 %31, i32* %13, align 4
  br label %34

32:                                               ; preds = %21
  %33 = call i32 (...) @usage()
  br label %34

34:                                               ; preds = %32, %29, %26, %23
  br label %16

35:                                               ; preds = %16
  %36 = load i64, i64* @optind, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %4, align 4
  %41 = load i64, i64* @optind, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 %41
  store i8** %43, i8*** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = call i32 (...) @usage()
  br label %48

48:                                               ; preds = %46, %35
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @SPRAYMAX, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @SPRAYMAX, align 4
  store i32 %53, i32* %13, align 4
  br label %71

54:                                               ; preds = %48
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @SPRAYOVERHEAD, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @SPRAYOVERHEAD, align 4
  store i32 %59, i32* %13, align 4
  br label %70

60:                                               ; preds = %54
  %61 = load i32, i32* @SPRAYOVERHEAD, align 4
  %62 = sub nsw i32 %61, 3
  %63 = load i32, i32* %13, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = and i32 %65, -4
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* @SPRAYOVERHEAD, align 4
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %60, %58
  br label %71

71:                                               ; preds = %70, %52
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %13, align 4
  %76 = sdiv i32 100000, %75
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @SPRAYOVERHEAD, align 4
  %80 = sub nsw i32 %78, %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* @spray_buffer, align 4
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  %84 = load i8**, i8*** %5, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* @SPRAYPROG, align 4
  %87 = load i32, i32* @SPRAYVERS, align 4
  %88 = call i32* @clnt_create(i8* %85, i32 %86, i32 %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32* %88, i32** %8, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %77
  %92 = call i32 @clnt_spcreateerror(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %93 = call i32 @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %91, %77
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* @CLSET_TIMEOUT, align 4
  %97 = call i32 @clnt_control(i32* %95, i32 %96, i32* @NO_DEFAULT)
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* @SPRAYPROC_CLEAR, align 4
  %100 = load i64, i64* @xdr_void, align 8
  %101 = trunc i64 %100 to i32
  %102 = load i64, i64* @xdr_void, align 8
  %103 = trunc i64 %102 to i32
  %104 = load i32, i32* @TIMEOUT, align 4
  %105 = call i64 @clnt_call(i32* %98, i32 %99, i32 %101, %struct.TYPE_8__* null, i32 %103, %struct.TYPE_7__* null, i32 %104)
  %106 = load i64, i64* @RPC_SUCCESS, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %94
  %109 = load i32*, i32** %8, align 8
  %110 = call i32 @clnt_sperror(i32* %109, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %111 = call i32 @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %108, %94
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load i8**, i8*** %5, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %113, i32 %114, i8* %116)
  %118 = load i32, i32* @stdout, align 4
  %119 = call i32 @fflush(i32 %118)
  store i32 0, i32* %10, align 4
  br label %120

120:                                              ; preds = %139, %112
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %142

124:                                              ; preds = %120
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* @SPRAYPROC_SPRAY, align 4
  %127 = load i64, i64* @xdr_sprayarr, align 8
  %128 = trunc i64 %127 to i32
  %129 = load i64, i64* @xdr_void, align 8
  %130 = trunc i64 %129 to i32
  %131 = load i32, i32* @ONE_WAY, align 4
  %132 = call i64 @clnt_call(i32* %125, i32 %126, i32 %128, %struct.TYPE_8__* %7, i32 %130, %struct.TYPE_7__* null, i32 %131)
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %124
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @usleep(i32 %136)
  br label %138

138:                                              ; preds = %135, %124
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %10, align 4
  br label %120

142:                                              ; preds = %120
  %143 = load i32*, i32** %8, align 8
  %144 = load i32, i32* @SPRAYPROC_GET, align 4
  %145 = load i64, i64* @xdr_void, align 8
  %146 = trunc i64 %145 to i32
  %147 = load i64, i64* @xdr_spraycumul, align 8
  %148 = trunc i64 %147 to i32
  %149 = load i32, i32* @TIMEOUT, align 4
  %150 = call i64 @clnt_call(i32* %143, i32 %144, i32 %146, %struct.TYPE_8__* null, i32 %148, %struct.TYPE_7__* %6, i32 %149)
  %151 = load i64, i64* @RPC_SUCCESS, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %142
  %154 = load i32*, i32** %8, align 8
  %155 = call i32 @clnt_sperror(i32* %154, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %156 = call i32 @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %153, %142
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load double, double* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load double, double* %162, align 8
  %164 = fdiv double %163, 1.000000e+06
  %165 = fadd double %160, %164
  store double %165, double* %14, align 8
  %166 = load double, double* %14, align 8
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), double %166)
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %11, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %185

172:                                              ; preds = %157
  %173 = load i32, i32* %11, align 4
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sub nsw i32 %173, %175
  store i32 %176, i32* %15, align 4
  %177 = load i32, i32* %15, align 4
  %178 = load i32, i32* %15, align 4
  %179 = sitofp i32 %178 to double
  %180 = fmul double 1.000000e+02, %179
  %181 = load i32, i32* %11, align 4
  %182 = sitofp i32 %181 to double
  %183 = fdiv double %180, %182
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %177, double %183)
  br label %187

185:                                              ; preds = %157
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %172
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %13, align 4
  %191 = load double, double* %14, align 8
  %192 = call i32 @print_xferstats(i32 %189, i32 %190, double %191)
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %13, align 4
  %197 = load double, double* %14, align 8
  %198 = call i32 @print_xferstats(i32 %195, i32 %196, double %197)
  %199 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32* @clnt_create(i8*, i32, i32, i8*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @clnt_spcreateerror(i8*) #1

declare dso_local i32 @clnt_control(i32*, i32, i32*) #1

declare dso_local i64 @clnt_call(i32*, i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @clnt_sperror(i32*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @print_xferstats(i32, i32, double) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
