; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_checksum.c_ng_checksum_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_checksum.c_ng_checksum_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.ng_checksum_config, %struct.ng_checksum_config*, i32 }
%struct.ng_checksum_config = type { i32, i32 }
%struct.ng_mesg = type { %struct.TYPE_4__, %struct.ng_checksum_config* }
%struct.TYPE_4__ = type { i64, i32, i32 }

@NGM_CHECKSUM_COOKIE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NG_CHECKSUM_CSUM_IPV4 = common dso_local global i32 0, align 4
@NG_CHECKSUM_CSUM_IPV6 = common dso_local global i32 0, align 4
@M_NETGRAPH = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_checksum_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_checksum_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.ng_checksum_config*, align 8
  %9 = alloca %struct.ng_checksum_config*, align 8
  %10 = alloca %struct.ng_mesg*, align 8
  %11 = alloca %struct.ng_mesg*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.TYPE_5__* @NG_NODE_PRIVATE(i32 %13)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %7, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %17 = call i32 @NGI_GET_MSG(i32 %15, %struct.ng_mesg* %16)
  %18 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %19 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NGM_CHECKSUM_COOKIE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = call i32 @ERROUT(i32 %25)
  br label %27

27:                                               ; preds = %24, %3
  %28 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %29 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %187 [
    i32 131, label %32
    i32 128, label %50
    i32 132, label %78
    i32 129, label %103
    i32 130, label %153
    i32 134, label %153
    i32 133, label %153
  ]

32:                                               ; preds = %27
  %33 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %34 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %35 = load i32, i32* @M_WAITOK, align 4
  %36 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %33, %struct.ng_mesg* %34, i32 4, i32 %35)
  %37 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %38 = icmp eq %struct.ng_mesg* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = call i32 @ERROUT(i32 %40)
  br label %42

42:                                               ; preds = %39, %32
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %47 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %46, i32 0, i32 1
  %48 = load %struct.ng_checksum_config*, %struct.ng_checksum_config** %47, align 8
  %49 = bitcast %struct.ng_checksum_config* %48 to i32*
  store i32 %45, i32* %49, align 4
  br label %190

50:                                               ; preds = %27
  %51 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %52 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ne i64 %55, 4
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @EINVAL, align 4
  %59 = call i32 @ERROUT(i32 %58)
  br label %60

60:                                               ; preds = %57, %50
  %61 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %62 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %61, i32 0, i32 1
  %63 = load %struct.ng_checksum_config*, %struct.ng_checksum_config** %62, align 8
  %64 = bitcast %struct.ng_checksum_config* %63 to i32*
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %74 [
    i32 136, label %66
    i32 135, label %66
  ]

66:                                               ; preds = %60, %60
  %67 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %68 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %67, i32 0, i32 1
  %69 = load %struct.ng_checksum_config*, %struct.ng_checksum_config** %68, align 8
  %70 = bitcast %struct.ng_checksum_config* %69 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  br label %77

74:                                               ; preds = %60
  %75 = load i32, i32* @EINVAL, align 4
  %76 = call i32 @ERROUT(i32 %75)
  br label %77

77:                                               ; preds = %74, %66
  br label %190

78:                                               ; preds = %27
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load %struct.ng_checksum_config*, %struct.ng_checksum_config** %80, align 8
  %82 = icmp eq %struct.ng_checksum_config* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = call i32 @ERROUT(i32 0)
  br label %85

85:                                               ; preds = %83, %78
  %86 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %87 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %88 = load i32, i32* @M_WAITOK, align 4
  %89 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %86, %struct.ng_mesg* %87, i32 8, i32 %88)
  %90 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %91 = icmp eq %struct.ng_mesg* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = call i32 @ERROUT(i32 %93)
  br label %95

95:                                               ; preds = %92, %85
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load %struct.ng_checksum_config*, %struct.ng_checksum_config** %97, align 8
  %99 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %100 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %99, i32 0, i32 1
  %101 = load %struct.ng_checksum_config*, %struct.ng_checksum_config** %100, align 8
  %102 = call i32 @bcopy(%struct.ng_checksum_config* %98, %struct.ng_checksum_config* %101, i32 8)
  br label %190

103:                                              ; preds = %27
  %104 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %105 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %104, i32 0, i32 1
  %106 = load %struct.ng_checksum_config*, %struct.ng_checksum_config** %105, align 8
  store %struct.ng_checksum_config* %106, %struct.ng_checksum_config** %8, align 8
  %107 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %108 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = icmp ne i64 %111, 8
  br i1 %112, label %113, label %116

113:                                              ; preds = %103
  %114 = load i32, i32* @EINVAL, align 4
  %115 = call i32 @ERROUT(i32 %114)
  br label %116

116:                                              ; preds = %113, %103
  %117 = load i32, i32* @NG_CHECKSUM_CSUM_IPV4, align 4
  %118 = load i32, i32* @NG_CHECKSUM_CSUM_IPV6, align 4
  %119 = or i32 %117, %118
  %120 = load %struct.ng_checksum_config*, %struct.ng_checksum_config** %8, align 8
  %121 = getelementptr inbounds %struct.ng_checksum_config, %struct.ng_checksum_config* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load i32, i32* @NG_CHECKSUM_CSUM_IPV4, align 4
  %125 = load i32, i32* @NG_CHECKSUM_CSUM_IPV6, align 4
  %126 = or i32 %124, %125
  %127 = load %struct.ng_checksum_config*, %struct.ng_checksum_config** %8, align 8
  %128 = getelementptr inbounds %struct.ng_checksum_config, %struct.ng_checksum_config* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load i32, i32* @M_NETGRAPH, align 4
  %132 = load i32, i32* @M_WAITOK, align 4
  %133 = load i32, i32* @M_ZERO, align 4
  %134 = or i32 %132, %133
  %135 = call %struct.ng_checksum_config* @malloc(i32 8, i32 %131, i32 %134)
  store %struct.ng_checksum_config* %135, %struct.ng_checksum_config** %9, align 8
  %136 = load %struct.ng_checksum_config*, %struct.ng_checksum_config** %8, align 8
  %137 = load %struct.ng_checksum_config*, %struct.ng_checksum_config** %9, align 8
  %138 = call i32 @bcopy(%struct.ng_checksum_config* %136, %struct.ng_checksum_config* %137, i32 8)
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load %struct.ng_checksum_config*, %struct.ng_checksum_config** %140, align 8
  %142 = icmp ne %struct.ng_checksum_config* %141, null
  br i1 %142, label %143, label %149

143:                                              ; preds = %116
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load %struct.ng_checksum_config*, %struct.ng_checksum_config** %145, align 8
  %147 = load i32, i32* @M_NETGRAPH, align 4
  %148 = call i32 @free(%struct.ng_checksum_config* %146, i32 %147)
  br label %149

149:                                              ; preds = %143, %116
  %150 = load %struct.ng_checksum_config*, %struct.ng_checksum_config** %9, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  store %struct.ng_checksum_config* %150, %struct.ng_checksum_config** %152, align 8
  br label %190

153:                                              ; preds = %27, %27, %27
  %154 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %155 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 134
  br i1 %158, label %159, label %176

159:                                              ; preds = %153
  %160 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %161 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %162 = load i32, i32* @M_WAITOK, align 4
  %163 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %160, %struct.ng_mesg* %161, i32 4, i32 %162)
  %164 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %165 = icmp eq %struct.ng_mesg* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %159
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = call i32 @ERROUT(i32 %167)
  br label %169

169:                                              ; preds = %166, %159
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %173 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %172, i32 0, i32 1
  %174 = load %struct.ng_checksum_config*, %struct.ng_checksum_config** %173, align 8
  %175 = call i32 @bcopy(%struct.ng_checksum_config* %171, %struct.ng_checksum_config* %174, i32 4)
  br label %176

176:                                              ; preds = %169, %153
  %177 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %178 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 130
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = call i32 @bzero(%struct.ng_checksum_config* %184, i32 4)
  br label %186

186:                                              ; preds = %182, %176
  br label %190

187:                                              ; preds = %27
  %188 = load i32, i32* @EINVAL, align 4
  %189 = call i32 @ERROUT(i32 %188)
  br label %190

190:                                              ; preds = %187, %186, %149, %95, %77, %42
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* %4, align 4
  %194 = load i32, i32* %5, align 4
  %195 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %196 = call i32 @NG_RESPOND_MSG(i32 %192, i32 %193, i32 %194, %struct.ng_mesg* %195)
  %197 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %198 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %197)
  %199 = load i32, i32* %12, align 4
  ret i32 %199
}

declare dso_local %struct.TYPE_5__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @ERROUT(i32) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @bcopy(%struct.ng_checksum_config*, %struct.ng_checksum_config*, i32) #1

declare dso_local %struct.ng_checksum_config* @malloc(i32, i32, i32) #1

declare dso_local i32 @free(%struct.ng_checksum_config*, i32) #1

declare dso_local i32 @bzero(%struct.ng_checksum_config*, i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
