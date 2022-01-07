; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bootparamd/callbootd/extr_callbootd.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bootparamd/callbootd/extr_callbootd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i8* }
%struct.TYPE_18__ = type { i8*, i8* }
%struct.TYPE_17__ = type { i32, i8* }

@cln = common dso_local global i8* null, align 8
@dmn = common dso_local global i32 0, align 4
@path = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@broadcast = common dso_local global i32 0, align 4
@BOOTPARAMPROG = common dso_local global i32 0, align 4
@BOOTPARAMVERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"could not contact bootparam server on host %s\00", align 1
@IP_ADDR_TYPE = common dso_local global i32 0, align 4
@INADDR_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"bogus addr %s\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Whoami returning:\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"bad answer returned from server %s\00", align 1
@BOOTPARAMPROC_WHOAMI = common dso_local global i32 0, align 4
@xdr_bp_whoami_arg = common dso_local global i32 0, align 4
@xdr_bp_whoami_res = common dso_local global i32 0, align 4
@eachres_whoami = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"getfile returning:\0A\00", align 1
@BOOTPARAMPROC_GETFILE = common dso_local global i32 0, align 4
@xdr_bp_getfile_arg = common dso_local global i32 0, align 4
@xdr_bp_getfile_res = common dso_local global i32 0, align 4
@eachres_getfile = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_16__, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__, align 8
  %10 = alloca %struct.TYPE_18__, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_17__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i8*, i8** @cln, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* @dmn, align 4
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load i8*, i8** @cln, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* @path, align 4
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 3
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = call i32 (...) @usage()
  br label %27

27:                                               ; preds = %25, %2
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 1, i32* @broadcast, align 4
  br label %35

35:                                               ; preds = %34, %27
  %36 = load i32, i32* @broadcast, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* @BOOTPARAMPROG, align 4
  %41 = load i32, i32* @BOOTPARAMVERS, align 4
  %42 = call i32* @clnt_create(i8* %39, i32 %40, i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32* %42, i32** %14, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @errx(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %45, %38
  br label %49

49:                                               ; preds = %48, %35
  %50 = load i32, i32* %4, align 4
  switch i32 %50, label %135 [
    i32 3, label %51
    i32 4, label %99
  ]

51:                                               ; preds = %49
  %52 = load i32, i32* @IP_ADDR_TYPE, align 4
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @inet_addr(i8* %57)
  store i64 %58, i64* %13, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* @INADDR_NONE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %51
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @errx(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %62, %51
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = call i32 @bcopy(i64* %13, i32* %70, i32 4)
  %72 = load i32, i32* @broadcast, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %67
  %75 = load i32*, i32** %14, align 8
  %76 = call %struct.TYPE_15__* @bootparamproc_whoami_1(%struct.TYPE_16__* %7, i32* %75)
  store %struct.TYPE_15__* %76, %struct.TYPE_15__** %8, align 8
  %77 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %79 = call i32 @printwhoami(%struct.TYPE_15__* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %82)
  br label %86

84:                                               ; preds = %74
  %85 = call i32 @exit(i32 0) #3
  unreachable

86:                                               ; preds = %81
  br label %98

87:                                               ; preds = %67
  %88 = load i32, i32* @BOOTPARAMPROG, align 4
  %89 = load i32, i32* @BOOTPARAMVERS, align 4
  %90 = load i32, i32* @BOOTPARAMPROC_WHOAMI, align 4
  %91 = load i32, i32* @xdr_bp_whoami_arg, align 4
  %92 = bitcast %struct.TYPE_16__* %7 to i8*
  %93 = load i32, i32* @xdr_bp_whoami_res, align 4
  %94 = bitcast %struct.TYPE_15__* %9 to i8*
  %95 = load i32, i32* @eachres_whoami, align 4
  %96 = call i32 @clnt_broadcast(i32 %88, i32 %89, i32 %90, i32 %91, i8* %92, i32 %93, i8* %94, i32 %95)
  %97 = call i32 @exit(i32 0) #3
  unreachable

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %49, %98
  %100 = load i8**, i8*** %5, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 2
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  store i8* %102, i8** %103, align 8
  %104 = load i8**, i8*** %5, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 3
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  store i8* %106, i8** %107, align 8
  %108 = load i32, i32* @broadcast, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %123, label %110

110:                                              ; preds = %99
  %111 = load i32*, i32** %14, align 8
  %112 = call %struct.TYPE_17__* @bootparamproc_getfile_1(%struct.TYPE_18__* %10, i32* %111)
  store %struct.TYPE_17__* %112, %struct.TYPE_17__** %11, align 8
  %113 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %115 = call i32 @printgetfile(%struct.TYPE_17__* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load i8*, i8** %6, align 8
  %119 = call i32 @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %118)
  br label %122

120:                                              ; preds = %110
  %121 = call i32 @exit(i32 0) #3
  unreachable

122:                                              ; preds = %117
  br label %134

123:                                              ; preds = %99
  %124 = load i32, i32* @BOOTPARAMPROG, align 4
  %125 = load i32, i32* @BOOTPARAMVERS, align 4
  %126 = load i32, i32* @BOOTPARAMPROC_GETFILE, align 4
  %127 = load i32, i32* @xdr_bp_getfile_arg, align 4
  %128 = bitcast %struct.TYPE_18__* %10 to i8*
  %129 = load i32, i32* @xdr_bp_getfile_res, align 4
  %130 = bitcast %struct.TYPE_17__* %12 to i8*
  %131 = load i32, i32* @eachres_getfile, align 4
  %132 = call i32 @clnt_broadcast(i32 %124, i32 %125, i32 %126, i32 %127, i8* %128, i32 %129, i8* %130, i32 %131)
  %133 = call i32 @exit(i32 0) #3
  unreachable

134:                                              ; preds = %122
  br label %135

135:                                              ; preds = %49, %134
  %136 = call i32 (...) @usage()
  br label %137

137:                                              ; preds = %135
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @clnt_create(i8*, i32, i32, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i64 @inet_addr(i8*) #1

declare dso_local i32 @bcopy(i64*, i32*, i32) #1

declare dso_local %struct.TYPE_15__* @bootparamproc_whoami_1(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @printwhoami(%struct.TYPE_15__*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @clnt_broadcast(i32, i32, i32, i32, i8*, i32, i8*, i32) #1

declare dso_local %struct.TYPE_17__* @bootparamproc_getfile_1(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @printgetfile(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
