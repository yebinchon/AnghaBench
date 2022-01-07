; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/netflow/extr_netflow_v9.c_generate_v9_templates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/netflow/extr_netflow_v9.c_generate_v9_templates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32*, i64* }

@_netflow_v9_record_ipv4_tcp = common dso_local global %struct.TYPE_7__* null, align 8
@_netflow_v9_record_ipv6_tcp = common dso_local global %struct.TYPE_7__* null, align 8
@M_NETFLOW_GENERAL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@NETFLOW_V9_MAX_RESERVED_FLOWSET = common dso_local global i32 0, align 4
@NETFLOW_V9_FLOW_V4_L4 = common dso_local global i32 0, align 4
@NETFLOW_V9_FLOW_V6_L4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @generate_v9_templates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_v9_templates(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_netflow_v9_record_ipv4_tcp, align 8
  %8 = call i32 @_NETFLOW_V9_TEMPLATE_SIZE(%struct.TYPE_7__* %7)
  %9 = sext i32 %8 to i64
  %10 = add i64 4, %9
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_netflow_v9_record_ipv6_tcp, align 8
  %12 = call i32 @_NETFLOW_V9_TEMPLATE_SIZE(%struct.TYPE_7__* %11)
  %13 = sext i32 %12 to i64
  %14 = add i64 %10, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @M_NETFLOW_GENERAL, align 4
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = load i32, i32* @M_ZERO, align 4
  %20 = or i32 %18, %19
  %21 = call i64 @malloc(i32 %16, i32 %17, i32 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  store i64 %21, i64* %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = srem i32 %26, 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load i32, i32* %6, align 4
  %31 = srem i32 %30, 4
  %32 = sub nsw i32 4, %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %29, %1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8**
  store i8** %43, i8*** %3, align 8
  %44 = load i8**, i8*** %3, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i32 1
  store i8** %45, i8*** %3, align 8
  store i8* null, i8** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i8* @htons(i32 %46)
  %48 = load i8**, i8*** %3, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i32 1
  store i8** %49, i8*** %3, align 8
  store i8* %47, i8** %48, align 8
  %50 = load i32, i32* @NETFLOW_V9_MAX_RESERVED_FLOWSET, align 4
  %51 = load i32, i32* @NETFLOW_V9_FLOW_V4_L4, align 4
  %52 = add nsw i32 %50, %51
  %53 = call i8* @htons(i32 %52)
  %54 = load i8**, i8*** %3, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i32 1
  store i8** %55, i8*** %3, align 8
  store i8* %53, i8** %54, align 8
  %56 = load i8**, i8*** %3, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i32 1
  store i8** %57, i8*** %3, align 8
  store i8** %56, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %85, %35
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_netflow_v9_record_ipv4_tcp, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %58
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_netflow_v9_record_ipv4_tcp, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @htons(i32 %72)
  %74 = load i8**, i8*** %3, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i32 1
  store i8** %75, i8*** %3, align 8
  store i8* %73, i8** %74, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_netflow_v9_record_ipv4_tcp, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @htons(i32 %81)
  %83 = load i8**, i8*** %3, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i32 1
  store i8** %84, i8*** %3, align 8
  store i8* %82, i8** %83, align 8
  br label %85

85:                                               ; preds = %66
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %58

88:                                               ; preds = %58
  %89 = load i32, i32* %5, align 4
  %90 = call i8* @htons(i32 %89)
  %91 = load i8**, i8*** %4, align 8
  store i8* %90, i8** %91, align 8
  %92 = load i32, i32* @NETFLOW_V9_MAX_RESERVED_FLOWSET, align 4
  %93 = load i32, i32* @NETFLOW_V9_FLOW_V6_L4, align 4
  %94 = add nsw i32 %92, %93
  %95 = call i8* @htons(i32 %94)
  %96 = load i8**, i8*** %3, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i32 1
  store i8** %97, i8*** %3, align 8
  store i8* %95, i8** %96, align 8
  %98 = load i8**, i8*** %3, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i32 1
  store i8** %99, i8*** %3, align 8
  store i8** %98, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %127, %88
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_netflow_v9_record_ipv6_tcp, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %130

108:                                              ; preds = %100
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_netflow_v9_record_ipv6_tcp, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @htons(i32 %114)
  %116 = load i8**, i8*** %3, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i32 1
  store i8** %117, i8*** %3, align 8
  store i8* %115, i8** %116, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_netflow_v9_record_ipv6_tcp, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @htons(i32 %123)
  %125 = load i8**, i8*** %3, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i32 1
  store i8** %126, i8*** %3, align 8
  store i8* %124, i8** %125, align 8
  br label %127

127:                                              ; preds = %108
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %5, align 4
  br label %100

130:                                              ; preds = %100
  %131 = load i32, i32* %5, align 4
  %132 = call i8* @htons(i32 %131)
  %133 = load i8**, i8*** %4, align 8
  store i8* %132, i8** %133, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 2, i32* %137, align 4
  ret void
}

declare dso_local i32 @_NETFLOW_V9_TEMPLATE_SIZE(%struct.TYPE_7__*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i8* @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
