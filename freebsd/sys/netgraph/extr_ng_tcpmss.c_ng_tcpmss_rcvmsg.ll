; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_tcpmss.c_ng_tcpmss_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_tcpmss.c_ng_tcpmss_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_mesg = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.ng_tcpmss_config = type { i8*, i8*, i32 }

@NG_HOOKSIZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @ng_tcpmss_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_tcpmss_rcvmsg(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ng_mesg*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.ng_tcpmss_config*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %18 = call i32 @NGI_GET_MSG(i32 %16, %struct.ng_mesg* %17)
  %19 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %20 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %134 [
    i32 130, label %23
  ]

23:                                               ; preds = %3
  %24 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %25 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %131 [
    i32 128, label %28
    i32 132, label %28
    i32 129, label %28
    i32 131, label %86
  ]

28:                                               ; preds = %23, %23, %23
  %29 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %30 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @NG_HOOKSIZ, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = call i32 @ERROUT(i32 %36)
  br label %38

38:                                               ; preds = %35, %28
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %41 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32* @ng_findhook(i32 %39, i8* %43)
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* @ENOENT, align 4
  %49 = call i32 @ERROUT(i32 %48)
  br label %50

50:                                               ; preds = %47, %38
  %51 = load i32*, i32** %10, align 8
  %52 = call %struct.TYPE_7__* @NG_HOOK_PRIVATE(i32* %51)
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %11, align 8
  %53 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %54 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 132
  br i1 %57, label %58, label %75

58:                                               ; preds = %50
  %59 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %60 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %61 = load i32, i32* @M_NOWAIT, align 4
  %62 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %59, %struct.ng_mesg* %60, i32 4, i32 %61)
  %63 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %64 = icmp eq %struct.ng_mesg* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = call i32 @ERROUT(i32 %66)
  br label %68

68:                                               ; preds = %65, %58
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %72 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @bcopy(%struct.TYPE_8__* %70, i64 %73, i32 4)
  br label %75

75:                                               ; preds = %68, %50
  %76 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %77 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 128
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = call i32 @bzero(%struct.TYPE_8__* %83, i32 4)
  br label %85

85:                                               ; preds = %81, %75
  br label %133

86:                                               ; preds = %23
  %87 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %88 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = icmp ne i64 %91, 24
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32, i32* @EINVAL, align 4
  %95 = call i32 @ERROUT(i32 %94)
  br label %96

96:                                               ; preds = %93, %86
  %97 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %98 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to %struct.ng_tcpmss_config*
  store %struct.ng_tcpmss_config* %100, %struct.ng_tcpmss_config** %12, align 8
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.ng_tcpmss_config*, %struct.ng_tcpmss_config** %12, align 8
  %103 = getelementptr inbounds %struct.ng_tcpmss_config, %struct.ng_tcpmss_config* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32* @ng_findhook(i32 %101, i8* %104)
  store i32* %105, i32** %13, align 8
  %106 = load i32, i32* %4, align 4
  %107 = load %struct.ng_tcpmss_config*, %struct.ng_tcpmss_config** %12, align 8
  %108 = getelementptr inbounds %struct.ng_tcpmss_config, %struct.ng_tcpmss_config* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i32* @ng_findhook(i32 %106, i8* %109)
  store i32* %110, i32** %14, align 8
  %111 = load i32*, i32** %13, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %96
  %114 = load i32*, i32** %14, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %113, %96
  %117 = load i32, i32* @ENOENT, align 4
  %118 = call i32 @ERROUT(i32 %117)
  br label %119

119:                                              ; preds = %116, %113
  %120 = load i32*, i32** %13, align 8
  %121 = call %struct.TYPE_7__* @NG_HOOK_PRIVATE(i32* %120)
  store %struct.TYPE_7__* %121, %struct.TYPE_7__** %15, align 8
  %122 = load i32*, i32** %14, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  store i32* %122, i32** %124, align 8
  %125 = load %struct.ng_tcpmss_config*, %struct.ng_tcpmss_config** %12, align 8
  %126 = getelementptr inbounds %struct.ng_tcpmss_config, %struct.ng_tcpmss_config* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 8
  br label %133

131:                                              ; preds = %23
  %132 = load i32, i32* @EINVAL, align 4
  store i32 %132, i32* %9, align 4
  br label %133

133:                                              ; preds = %131, %119, %85
  br label %136

134:                                              ; preds = %3
  %135 = load i32, i32* @EINVAL, align 4
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %134, %133
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* %5, align 4
  %141 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %142 = call i32 @NG_RESPOND_MSG(i32 %138, i32 %139, i32 %140, %struct.ng_mesg* %141)
  %143 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %144 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %143)
  %145 = load i32, i32* %9, align 4
  ret i32 %145
}

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @ERROUT(i32) #1

declare dso_local i32* @ng_findhook(i32, i8*) #1

declare dso_local %struct.TYPE_7__* @NG_HOOK_PRIVATE(i32*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
