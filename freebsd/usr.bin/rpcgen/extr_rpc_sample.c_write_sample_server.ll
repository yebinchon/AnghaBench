; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_sample.c_write_sample_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_sample.c_write_sample_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_12__* }

@fout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@mtflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"*\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"bool_t\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@RQSTP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"struct svc_req *\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"\09static \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"char *\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c" result;\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"\09bool_t retval;\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"\0A\09/*\0A\09 * insert server code here\0A\09 */\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"\09return (&result);\0A}\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"\09return((void *) &result);\0A}\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"\09return (retval);\0A}\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"\0Aint\0A\00", align 1
@.str.16 = private unnamed_addr constant [68 x i8] c"_freeresult(SVCXPRT *transp, xdrproc_t xdr_result, caddr_t result)\0A\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"\09(void) xdr_free(xdr_result, result);\0A\00", align 1
@.str.18 = private unnamed_addr constant [62 x i8] c"\0A\09/*\0A\09 * Insert additional freeing code here, if needed\0A\09 */\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"\0A}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @write_sample_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_sample_server(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %3, align 8
  br label %10

10:                                               ; preds = %118, %1
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = icmp ne %struct.TYPE_11__* %11, null
  br i1 %12, label %13, label %122

13:                                               ; preds = %10
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %4, align 8
  br label %17

17:                                               ; preds = %90, %13
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = icmp ne %struct.TYPE_12__* %18, null
  br i1 %19, label %20, label %94

20:                                               ; preds = %17
  %21 = load i32, i32* @fout, align 4
  %22 = call i32 @f_print(i32 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = load i64, i64* @mtflag, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = call i32 @return_type(%struct.TYPE_12__* %26)
  %28 = load i32, i32* @fout, align 4
  %29 = call i32 @f_print(i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %33

30:                                               ; preds = %20
  %31 = load i32, i32* @fout, align 4
  %32 = call i32 @f_print(i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @pvname_svc(i32 %36, i32 %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = load i32, i32* @RQSTP, align 4
  %43 = call i32 @printarglist(%struct.TYPE_12__* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i32, i32* @fout, align 4
  %45 = call i32 @f_print(i32 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %46 = load i64, i64* @mtflag, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %65, label %48

48:                                               ; preds = %33
  %49 = load i32, i32* @fout, align 4
  %50 = call i32 @f_print(i32 %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @streq(i32 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = call i32 @return_type(%struct.TYPE_12__* %57)
  br label %62

59:                                               ; preds = %48
  %60 = load i32, i32* @fout, align 4
  %61 = call i32 @f_print(i32 %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* @fout, align 4
  %64 = call i32 @f_print(i32 %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %68

65:                                               ; preds = %33
  %66 = load i32, i32* @fout, align 4
  %67 = call i32 @f_print(i32 %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* @fout, align 4
  %70 = call i32 @f_print(i32 %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %71 = load i64, i64* @mtflag, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %86, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @streq(i32 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* @fout, align 4
  %81 = call i32 @f_print(i32 %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  br label %85

82:                                               ; preds = %73
  %83 = load i32, i32* @fout, align 4
  %84 = call i32 @f_print(i32 %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %79
  br label %89

86:                                               ; preds = %68
  %87 = load i32, i32* @fout, align 4
  %88 = call i32 @f_print(i32 %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %85
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  store %struct.TYPE_12__* %93, %struct.TYPE_12__** %4, align 8
  br label %17

94:                                               ; preds = %17
  %95 = load i64, i64* @mtflag, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %117

97:                                               ; preds = %94
  %98 = load i32, i32* @fout, align 4
  %99 = call i32 @f_print(i32 %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @pvname(i32 %102, i32 %105)
  %107 = load i32, i32* @fout, align 4
  %108 = call i32 @f_print(i32 %107, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.16, i64 0, i64 0))
  %109 = load i32, i32* @fout, align 4
  %110 = call i32 @f_print(i32 %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %111 = load i32, i32* @fout, align 4
  %112 = call i32 @f_print(i32 %111, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0))
  %113 = load i32, i32* @fout, align 4
  %114 = call i32 @f_print(i32 %113, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.18, i64 0, i64 0))
  %115 = load i32, i32* @fout, align 4
  %116 = call i32 @f_print(i32 %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  br label %117

117:                                              ; preds = %97, %94
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  store %struct.TYPE_11__* %121, %struct.TYPE_11__** %3, align 8
  br label %10

122:                                              ; preds = %10
  ret void
}

declare dso_local i32 @f_print(i32, i8*) #1

declare dso_local i32 @return_type(%struct.TYPE_12__*) #1

declare dso_local i32 @pvname_svc(i32, i32) #1

declare dso_local i32 @printarglist(%struct.TYPE_12__*, i8*, i32, i8*) #1

declare dso_local i32 @streq(i32, i8*) #1

declare dso_local i32 @pvname(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
