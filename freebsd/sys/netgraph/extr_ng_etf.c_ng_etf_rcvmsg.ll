; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_etf.c_ng_etf_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_etf.c_ng_etf_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.ng_mesg = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ng_etfstat = type { i32, i32 }
%struct.ng_etffilter = type { i32, i32 }
%struct.filter = type { i32, i32* }

@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@M_NETGRAPH_ETF = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @ng_etf_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_etf_rcvmsg(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ng_mesg*, align 8
  %11 = alloca %struct.ng_etfstat*, align 8
  %12 = alloca %struct.ng_etffilter*, align 8
  %13 = alloca %struct.filter*, align 8
  %14 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.TYPE_8__* @NG_NODE_PRIVATE(i32 %15)
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %7, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %19 = call i32 @NGI_GET_MSG(i32 %17, %struct.ng_mesg* %18)
  %20 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %21 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %146 [
    i32 131, label %24
  ]

24:                                               ; preds = %3
  %25 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %26 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %143 [
    i32 130, label %29
    i32 128, label %53
    i32 129, label %70
  ]

29:                                               ; preds = %24
  %30 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %31 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %32 = load i32, i32* @M_NOWAIT, align 4
  %33 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %30, %struct.ng_mesg* %31, i32 8, i32 %32)
  %34 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %35 = icmp ne %struct.ng_mesg* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %9, align 4
  br label %145

38:                                               ; preds = %29
  %39 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %40 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.ng_etfstat*
  store %struct.ng_etfstat* %42, %struct.ng_etfstat** %11, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ng_etfstat*, %struct.ng_etfstat** %11, align 8
  %47 = getelementptr inbounds %struct.ng_etfstat, %struct.ng_etfstat* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ng_etfstat*, %struct.ng_etfstat** %11, align 8
  %52 = getelementptr inbounds %struct.ng_etfstat, %struct.ng_etfstat* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %145

53:                                               ; preds = %24
  %54 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %55 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp ne i64 %58, 4
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %9, align 4
  br label %145

62:                                               ; preds = %53
  %63 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %64 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  br label %145

70:                                               ; preds = %24
  %71 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %72 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp ne i64 %75, 8
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @EINVAL, align 4
  store i32 %78, i32* %9, align 4
  br label %145

79:                                               ; preds = %70
  %80 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %81 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.ng_etffilter*
  store %struct.ng_etffilter* %83, %struct.ng_etffilter** %12, align 8
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.ng_etffilter*, %struct.ng_etffilter** %12, align 8
  %86 = getelementptr inbounds %struct.ng_etffilter, %struct.ng_etffilter* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32* @ng_findhook(i32 %84, i32 %87)
  store i32* %88, i32** %14, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %79
  %92 = load i32, i32* @ENOENT, align 4
  store i32 %92, i32* %9, align 4
  br label %145

93:                                               ; preds = %79
  %94 = load i32*, i32** %14, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %94, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* @EINVAL, align 4
  store i32 %101, i32* %9, align 4
  br label %145

102:                                              ; preds = %93
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = load %struct.ng_etffilter*, %struct.ng_etffilter** %12, align 8
  %105 = getelementptr inbounds %struct.ng_etffilter, %struct.ng_etffilter* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @htons(i32 %106)
  %108 = call i32 @ng_etf_findentry(%struct.TYPE_8__* %103, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %102
  %111 = load i32, i32* @EEXIST, align 4
  store i32 %111, i32* %9, align 4
  br label %145

112:                                              ; preds = %102
  %113 = load i32, i32* @M_NETGRAPH_ETF, align 4
  %114 = load i32, i32* @M_NOWAIT, align 4
  %115 = load i32, i32* @M_ZERO, align 4
  %116 = or i32 %114, %115
  %117 = call %struct.filter* @malloc(i32 16, i32 %113, i32 %116)
  store %struct.filter* %117, %struct.filter** %13, align 8
  %118 = load %struct.filter*, %struct.filter** %13, align 8
  %119 = icmp eq %struct.filter* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %112
  %121 = load i32, i32* @ENOMEM, align 4
  store i32 %121, i32* %9, align 4
  br label %145

122:                                              ; preds = %112
  %123 = load i32*, i32** %14, align 8
  %124 = load %struct.filter*, %struct.filter** %13, align 8
  %125 = getelementptr inbounds %struct.filter, %struct.filter* %124, i32 0, i32 1
  store i32* %123, i32** %125, align 8
  %126 = load %struct.ng_etffilter*, %struct.ng_etffilter** %12, align 8
  %127 = getelementptr inbounds %struct.ng_etffilter, %struct.ng_etffilter* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @htons(i32 %128)
  %130 = load %struct.filter*, %struct.filter** %13, align 8
  %131 = getelementptr inbounds %struct.filter, %struct.filter* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.filter*, %struct.filter** %13, align 8
  %136 = getelementptr inbounds %struct.filter, %struct.filter* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @HASH(i32 %137)
  %139 = add nsw i64 %134, %138
  %140 = load %struct.filter*, %struct.filter** %13, align 8
  %141 = load i32, i32* @next, align 4
  %142 = call i32 @LIST_INSERT_HEAD(i64 %139, %struct.filter* %140, i32 %141)
  br label %145

143:                                              ; preds = %24
  %144 = load i32, i32* @EINVAL, align 4
  store i32 %144, i32* %9, align 4
  br label %145

145:                                              ; preds = %143, %122, %120, %110, %100, %91, %77, %62, %60, %38, %36
  br label %148

146:                                              ; preds = %3
  %147 = load i32, i32* @EINVAL, align 4
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %146, %145
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* %5, align 4
  %152 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %153 = call i32 @NG_RESPOND_MSG(i32 %149, i32 %150, i32 %151, %struct.ng_mesg* %152)
  %154 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %155 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %154)
  %156 = load i32, i32* %9, align 4
  ret i32 %156
}

declare dso_local %struct.TYPE_8__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32* @ng_findhook(i32, i32) #1

declare dso_local i32 @ng_etf_findentry(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.filter* @malloc(i32, i32, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i64, %struct.filter*, i32) #1

declare dso_local i64 @HASH(i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
