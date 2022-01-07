; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_pptpgre.c_ng_pptpgre_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_pptpgre.c_ng_pptpgre_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.ng_pptpgre_conf, %struct.TYPE_12__, i32* }
%struct.ng_pptpgre_conf = type { i64 }
%struct.TYPE_12__ = type { %struct.ng_pptpgre_conf }
%struct.ng_mesg = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@sessions = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_pptpgre_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_pptpgre_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ng_mesg*, align 8
  %11 = alloca %struct.ng_pptpgre_conf*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.TYPE_11__* @NG_NODE_PRIVATE(i32 %15)
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %7, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %19 = call i32 @NGI_GET_MSG(i32 %17, %struct.ng_mesg* %18)
  %20 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %21 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %164 [
    i32 132, label %24
  ]

24:                                               ; preds = %3
  %25 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %26 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %161 [
    i32 128, label %29
    i32 130, label %77
    i32 129, label %127
    i32 133, label %127
    i32 131, label %127
  ]

29:                                               ; preds = %24
  %30 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %31 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.ng_pptpgre_conf*
  store %struct.ng_pptpgre_conf* %33, %struct.ng_pptpgre_conf** %11, align 8
  %34 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %35 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = icmp ne i64 %38, 8
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load i32, i32* @EINVAL, align 4
  %42 = call i32 @ERROUT(i32 %41)
  br label %43

43:                                               ; preds = %40, %29
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = load %struct.ng_pptpgre_conf*, %struct.ng_pptpgre_conf** %11, align 8
  %46 = getelementptr inbounds %struct.ng_pptpgre_conf, %struct.ng_pptpgre_conf* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call %struct.TYPE_12__* @ng_pptpgre_find_session(%struct.TYPE_11__* %44, i64 %47)
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %12, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %50 = icmp eq %struct.TYPE_12__* %49, null
  br i1 %50, label %51, label %69

51:                                               ; preds = %43
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %12, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %55 = load i32, i32* @sessions, align 4
  %56 = call i32 @LIST_REMOVE(%struct.TYPE_12__* %54, i32 %55)
  %57 = load %struct.ng_pptpgre_conf*, %struct.ng_pptpgre_conf** %11, align 8
  %58 = getelementptr inbounds %struct.ng_pptpgre_conf, %struct.ng_pptpgre_conf* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @SESSHASH(i64 %59)
  store i64 %60, i64* %13, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %13, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %67 = load i32, i32* @sessions, align 4
  %68 = call i32 @LIST_INSERT_HEAD(i32* %65, %struct.TYPE_12__* %66, i32 %67)
  br label %69

69:                                               ; preds = %51, %43
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %71 = call i32 @ng_pptpgre_reset(%struct.TYPE_12__* %70)
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load %struct.ng_pptpgre_conf*, %struct.ng_pptpgre_conf** %11, align 8
  %75 = bitcast %struct.ng_pptpgre_conf* %73 to i8*
  %76 = bitcast %struct.ng_pptpgre_conf* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %75, i8* align 8 %76, i64 8, i1 false)
  br label %163

77:                                               ; preds = %24
  %78 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %79 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %97

83:                                               ; preds = %77
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %85 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %86 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i64*
  %89 = load i64, i64* %88, align 8
  %90 = call %struct.TYPE_12__* @ng_pptpgre_find_session(%struct.TYPE_11__* %84, i64 %89)
  store %struct.TYPE_12__* %90, %struct.TYPE_12__** %14, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %92 = icmp eq %struct.TYPE_12__* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %83
  %94 = load i32, i32* @EINVAL, align 4
  %95 = call i32 @ERROUT(i32 %94)
  br label %96

96:                                               ; preds = %93, %83
  br label %110

97:                                               ; preds = %77
  %98 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %99 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  store %struct.TYPE_12__* %105, %struct.TYPE_12__** %14, align 8
  br label %109

106:                                              ; preds = %97
  %107 = load i32, i32* @EINVAL, align 4
  %108 = call i32 @ERROUT(i32 %107)
  br label %109

109:                                              ; preds = %106, %103
  br label %110

110:                                              ; preds = %109, %96
  %111 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %112 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %113 = load i32, i32* @M_NOWAIT, align 4
  %114 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %111, %struct.ng_mesg* %112, i32 8, i32 %113)
  %115 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %116 = icmp eq %struct.ng_mesg* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = call i32 @ERROUT(i32 %118)
  br label %120

120:                                              ; preds = %117, %110
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %124 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @bcopy(%struct.ng_pptpgre_conf* %122, i64 %125, i32 8)
  br label %163

127:                                              ; preds = %24, %24, %24
  %128 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %129 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 133
  br i1 %132, label %133, label %150

133:                                              ; preds = %127
  %134 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %135 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %136 = load i32, i32* @M_NOWAIT, align 4
  %137 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %134, %struct.ng_mesg* %135, i32 8, i32 %136)
  %138 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %139 = icmp eq %struct.ng_mesg* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = call i32 @ERROUT(i32 %141)
  br label %143

143:                                              ; preds = %140, %133
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %147 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @bcopy(%struct.ng_pptpgre_conf* %145, i64 %148, i32 8)
  br label %150

150:                                              ; preds = %143, %127
  %151 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %152 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 129
  br i1 %155, label %156, label %160

156:                                              ; preds = %150
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = call i32 @bzero(%struct.ng_pptpgre_conf* %158, i32 8)
  br label %160

160:                                              ; preds = %156, %150
  br label %163

161:                                              ; preds = %24
  %162 = load i32, i32* @EINVAL, align 4
  store i32 %162, i32* %9, align 4
  br label %163

163:                                              ; preds = %161, %160, %120, %69
  br label %166

164:                                              ; preds = %3
  %165 = load i32, i32* @EINVAL, align 4
  store i32 %165, i32* %9, align 4
  br label %166

166:                                              ; preds = %164, %163
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* %5, align 4
  %171 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %172 = call i32 @NG_RESPOND_MSG(i32 %168, i32 %169, i32 %170, %struct.ng_mesg* %171)
  %173 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %174 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %173)
  %175 = load i32, i32* %9, align 4
  ret i32 %175
}

declare dso_local %struct.TYPE_11__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @ERROUT(i32) #1

declare dso_local %struct.TYPE_12__* @ng_pptpgre_find_session(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @SESSHASH(i64) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @ng_pptpgre_reset(%struct.TYPE_12__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @bcopy(%struct.ng_pptpgre_conf*, i64, i32) #1

declare dso_local i32 @bzero(%struct.ng_pptpgre_conf*, i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
