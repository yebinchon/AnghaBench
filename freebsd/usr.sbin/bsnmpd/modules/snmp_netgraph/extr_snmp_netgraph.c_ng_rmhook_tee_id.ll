; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_ng_rmhook_tee_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_ng_rmhook_tee_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_mesg = type { i64 }
%struct.hooklist = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }

@NGM_GENERIC_COOKIE = common dso_local global i32 0, align 4
@NGM_LISTHOOKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tee\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"right\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_rmhook_tee_id(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ng_mesg*, align 8
  %7 = alloca %struct.hooklist*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 1, i32* %9, align 4
  br label %12

12:                                               ; preds = %125, %2
  %13 = load i64, i64* %4, align 8
  %14 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %15 = load i32, i32* @NGM_LISTHOOKS, align 4
  %16 = call %struct.ng_mesg* @ng_dialog_id(i64 %13, i32 %14, i32 %15, i32* null, i32 0)
  store %struct.ng_mesg* %16, %struct.ng_mesg** %6, align 8
  %17 = icmp eq %struct.ng_mesg* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %127

19:                                               ; preds = %12
  %20 = load %struct.ng_mesg*, %struct.ng_mesg** %6, align 8
  %21 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to %struct.hooklist*
  store %struct.hooklist* %24, %struct.hooklist** %7, align 8
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %45, %19
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.hooklist*, %struct.hooklist** %7, align 8
  %28 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %26, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %25
  %33 = load %struct.hooklist*, %struct.hooklist** %7, align 8
  %34 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @strcmp(i32 %39, i8* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %48

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %8, align 8
  br label %25

48:                                               ; preds = %43, %25
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.hooklist*, %struct.hooklist** %7, align 8
  %51 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %49, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.ng_mesg*, %struct.ng_mesg** %6, align 8
  %57 = call i32 @free(%struct.ng_mesg* %56)
  store i32 0, i32* %3, align 4
  br label %127

58:                                               ; preds = %48
  store i64 0, i64* %10, align 8
  store i8* null, i8** %11, align 8
  %59 = load %struct.hooklist*, %struct.hooklist** %7, align 8
  %60 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @strcmp(i32 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %109

69:                                               ; preds = %58
  %70 = load %struct.hooklist*, %struct.hooklist** %7, align 8
  %71 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @strcmp(i32 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %69
  %80 = load %struct.hooklist*, %struct.hooklist** %7, align 8
  %81 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %10, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %108

88:                                               ; preds = %69
  %89 = load %struct.hooklist*, %struct.hooklist** %7, align 8
  %90 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i64, i64* %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @strcmp(i32 %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %88
  %99 = load %struct.hooklist*, %struct.hooklist** %7, align 8
  %100 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = load i64, i64* %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %10, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %107

107:                                              ; preds = %98, %88
  br label %108

108:                                              ; preds = %107, %79
  br label %109

109:                                              ; preds = %108, %58
  %110 = load %struct.ng_mesg*, %struct.ng_mesg** %6, align 8
  %111 = call i32 @free(%struct.ng_mesg* %110)
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i64, i64* %4, align 8
  %116 = load i8*, i8** %5, align 8
  %117 = call i32 @ng_rmhook_id(i64 %115, i8* %116)
  store i32 0, i32* %9, align 4
  br label %121

118:                                              ; preds = %109
  %119 = load i64, i64* %4, align 8
  %120 = call i32 @ng_shutdown_id(i64 %119)
  br label %121

121:                                              ; preds = %118, %114
  %122 = load i64, i64* %10, align 8
  store i64 %122, i64* %4, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 0, i32* %3, align 4
  br label %127

125:                                              ; preds = %121
  %126 = load i8*, i8** %11, align 8
  store i8* %126, i8** %5, align 8
  br label %12

127:                                              ; preds = %124, %55, %18
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.ng_mesg* @ng_dialog_id(i64, i32, i32, i32*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @free(%struct.ng_mesg*) #1

declare dso_local i32 @ng_rmhook_id(i64, i8*) #1

declare dso_local i32 @ng_shutdown_id(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
