; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_hout.c_pprogramdef.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_hout.c_pprogramdef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__*, i32, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_15__* }

@tblflag = common dso_local global i64 0, align 8
@fout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"extern struct rpcgen_table %s_%s_table[];\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"extern %s_%s_nproc;\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"extern  \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"CLIENT *\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"struct svc_req *\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32)* @pprogramdef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pprogramdef(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = call i32 @pargdef(%struct.TYPE_16__* %8)
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @puldefine(i32 %12, i32 %17)
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %5, align 8
  br label %24

24:                                               ; preds = %121, %2
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = icmp ne %struct.TYPE_14__* %25, null
  br i1 %26, label %27, label %125

27:                                               ; preds = %24
  %28 = load i64, i64* @tblflag, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = load i32, i32* @fout, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @locase(i32 %34)
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32, i8*, ...) @f_print(i32 %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load i32, i32* @fout, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @locase(i32 %43)
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i8*, ...) @f_print(i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %30, %27
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @puldefine(i32 %52, i32 %55)
  %57 = load i32, i32* @fout, align 4
  %58 = call i32 (i32, i8*, ...) @f_print(i32 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %49
  %62 = load i32, i32* @fout, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 (i32, i8*, ...) @f_print(i32 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @pdispatch(i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %61, %49
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  store %struct.TYPE_15__* %75, %struct.TYPE_15__** %6, align 8
  br label %76

76:                                               ; preds = %109, %72
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %78 = icmp ne %struct.TYPE_15__* %77, null
  br i1 %78, label %79, label %113

79:                                               ; preds = %76
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = call i32 @define_printed(%struct.TYPE_15__* %80, %struct.TYPE_14__* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %79
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @puldefine(i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %88, %79
  %97 = load i32, i32* @fout, align 4
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 (i32, i8*, ...) @f_print(i32 %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %98)
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %102 = call i32 @pprocdef(%struct.TYPE_15__* %100, %struct.TYPE_14__* %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %103 = load i32, i32* @fout, align 4
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 (i32, i8*, ...) @f_print(i32 %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %104)
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %108 = call i32 @pprocdef(%struct.TYPE_15__* %106, %struct.TYPE_14__* %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 1)
  br label %109

109:                                              ; preds = %96
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  store %struct.TYPE_15__* %112, %struct.TYPE_15__** %6, align 8
  br label %76

113:                                              ; preds = %76
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @pfreeprocdef(i32 %116, i32 %119)
  br label %121

121:                                              ; preds = %113
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  store %struct.TYPE_14__* %124, %struct.TYPE_14__** %5, align 8
  br label %24

125:                                              ; preds = %24
  ret void
}

declare dso_local i32 @pargdef(%struct.TYPE_16__*) #1

declare dso_local i32 @puldefine(i32, i32) #1

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i32 @locase(i32) #1

declare dso_local i32 @pdispatch(i32, i32) #1

declare dso_local i32 @define_printed(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @pprocdef(%struct.TYPE_15__*, %struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @pfreeprocdef(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
