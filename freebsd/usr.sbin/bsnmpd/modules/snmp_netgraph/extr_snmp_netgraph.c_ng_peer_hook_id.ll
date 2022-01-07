; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_ng_peer_hook_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_ng_peer_hook_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_mesg = type { i64 }
%struct.hooklist = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@NGM_GENERIC_COOKIE = common dso_local global i32 0, align 4
@NGM_LISTHOOKS = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"get hook list: %m\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tee\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"right\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_peer_hook_id(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca %struct.hooklist*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %14 = load i32, i32* @NGM_LISTHOOKS, align 4
  %15 = call %struct.ng_mesg* @ng_dialog_id(i32 %12, i32 %13, i32 %14, i32* null, i32 0)
  store %struct.ng_mesg* %15, %struct.ng_mesg** %8, align 8
  %16 = icmp eq %struct.ng_mesg* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @LOG_ERR, align 4
  %19 = call i32 @syslog(i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @exit(i32 1) #3
  unreachable

21:                                               ; preds = %3
  %22 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %23 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.hooklist*
  store %struct.hooklist* %26, %struct.hooklist** %9, align 8
  store i64 0, i64* %10, align 8
  br label %27

27:                                               ; preds = %47, %21
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.hooklist*, %struct.hooklist** %9, align 8
  %30 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %28, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %27
  %35 = load %struct.hooklist*, %struct.hooklist** %9, align 8
  %36 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @strcmp(i32 %41, i8* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %50

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %10, align 8
  br label %27

50:                                               ; preds = %45, %27
  %51 = load i64, i64* %10, align 8
  %52 = load %struct.hooklist*, %struct.hooklist** %9, align 8
  %53 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %51, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %59 = call i32 @free(%struct.ng_mesg* %58)
  store i32 -1, i32* %4, align 4
  br label %133

60:                                               ; preds = %50
  %61 = load %struct.hooklist*, %struct.hooklist** %9, align 8
  %62 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %5, align 4
  store i32 0, i32* %11, align 4
  %69 = load %struct.hooklist*, %struct.hooklist** %9, align 8
  %70 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @strcmp(i32 %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %119

79:                                               ; preds = %60
  %80 = load %struct.hooklist*, %struct.hooklist** %9, align 8
  %81 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @strcmp(i32 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %79
  %90 = load i32, i32* %5, align 4
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 @ng_peer_hook_id(i32 %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %91)
  store i32 %92, i32* %11, align 4
  br label %118

93:                                               ; preds = %79
  %94 = load %struct.hooklist*, %struct.hooklist** %9, align 8
  %95 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i64, i64* %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @strcmp(i32 %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %93
  %104 = load i32, i32* %5, align 4
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @ng_peer_hook_id(i32 %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %105)
  store i32 %106, i32* %11, align 4
  br label %117

107:                                              ; preds = %93
  %108 = load i8*, i8** %7, align 8
  %109 = load %struct.hooklist*, %struct.hooklist** %9, align 8
  %110 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load i64, i64* %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @strcpy(i8* %108, i32 %115)
  br label %117

117:                                              ; preds = %107, %103
  br label %118

118:                                              ; preds = %117, %89
  br label %129

119:                                              ; preds = %60
  %120 = load i8*, i8** %7, align 8
  %121 = load %struct.hooklist*, %struct.hooklist** %9, align 8
  %122 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = load i64, i64* %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @strcpy(i8* %120, i32 %127)
  br label %129

129:                                              ; preds = %119, %118
  %130 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %131 = call i32 @free(%struct.ng_mesg* %130)
  %132 = load i32, i32* %11, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %129, %57
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local %struct.ng_mesg* @ng_dialog_id(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @free(%struct.ng_mesg*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
