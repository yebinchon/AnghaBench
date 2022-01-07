; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_ng_next_node_id_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_ng_next_node_id_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_mesg = type { i64 }
%struct.hooklist = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@NGM_GENERIC_COOKIE = common dso_local global i32 0, align 4
@NGM_LISTHOOKS = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"get hook list: %m\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tee\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i32)* @ng_next_node_id_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_next_node_id_internal(i32 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ng_mesg*, align 8
  %11 = alloca %struct.hooklist*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %15 = load i32, i32* @NGM_LISTHOOKS, align 4
  %16 = call %struct.ng_mesg* @ng_dialog_id(i32 %13, i32 %14, i32 %15, i32* null, i32 0)
  store %struct.ng_mesg* %16, %struct.ng_mesg** %10, align 8
  %17 = icmp eq %struct.ng_mesg* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = call i32 @syslog(i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %4
  %23 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %24 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = bitcast i8* %26 to %struct.hooklist*
  store %struct.hooklist* %27, %struct.hooklist** %11, align 8
  store i64 0, i64* %12, align 8
  br label %28

28:                                               ; preds = %48, %22
  %29 = load i64, i64* %12, align 8
  %30 = load %struct.hooklist*, %struct.hooklist** %11, align 8
  %31 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %29, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %28
  %36 = load %struct.hooklist*, %struct.hooklist** %11, align 8
  %37 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 @strcmp(i32 %42, i8* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %51

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %12, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %12, align 8
  br label %28

51:                                               ; preds = %46, %28
  %52 = load i64, i64* %12, align 8
  %53 = load %struct.hooklist*, %struct.hooklist** %11, align 8
  %54 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %52, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %60 = call i32 @free(%struct.ng_mesg* %59)
  store i32 0, i32* %5, align 4
  br label %151

61:                                               ; preds = %51
  %62 = load %struct.hooklist*, %struct.hooklist** %11, align 8
  %63 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i64, i64* %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %130

72:                                               ; preds = %61
  %73 = load %struct.hooklist*, %struct.hooklist** %11, align 8
  %74 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i64, i64* %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @strcmp(i32 %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %130

83:                                               ; preds = %72
  %84 = load %struct.hooklist*, %struct.hooklist** %11, align 8
  %85 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i64, i64* %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @strcmp(i32 %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %83
  %94 = load i32, i32* %6, align 4
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @ng_next_node_id(i32 %94, i8* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 %96, i32* %6, align 4
  br label %129

97:                                               ; preds = %83
  %98 = load %struct.hooklist*, %struct.hooklist** %11, align 8
  %99 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load i64, i64* %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @strcmp(i32 %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %97
  %108 = load i32, i32* %6, align 4
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 @ng_next_node_id(i32 %108, i8* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %110, i32* %6, align 4
  br label %128

111:                                              ; preds = %97
  %112 = load i8*, i8** %7, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %127

114:                                              ; preds = %111
  %115 = load %struct.hooklist*, %struct.hooklist** %11, align 8
  %116 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = load i64, i64* %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i8*, i8** %7, align 8
  %124 = call i64 @strcmp(i32 %122, i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %114
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %126, %114, %111
  br label %128

128:                                              ; preds = %127, %107
  br label %129

129:                                              ; preds = %128, %93
  br label %147

130:                                              ; preds = %72, %61
  %131 = load i8*, i8** %7, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %146

133:                                              ; preds = %130
  %134 = load %struct.hooklist*, %struct.hooklist** %11, align 8
  %135 = getelementptr inbounds %struct.hooklist, %struct.hooklist* %134, i32 0, i32 0
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = load i64, i64* %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i8*, i8** %7, align 8
  %143 = call i64 @strcmp(i32 %141, i8* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %133
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %145, %133, %130
  br label %147

147:                                              ; preds = %146, %129
  %148 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %149 = call i32 @free(%struct.ng_mesg* %148)
  %150 = load i32, i32* %6, align 4
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %147, %58
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local %struct.ng_mesg* @ng_dialog_id(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @free(%struct.ng_mesg*) #1

declare dso_local i32 @ng_next_node_id(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
