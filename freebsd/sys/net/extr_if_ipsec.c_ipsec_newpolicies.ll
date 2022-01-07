; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_ipsec.c_ipsec_newpolicies.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_ipsec.c_ipsec_newpolicies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipsec_softc = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.secpolicy = type { %struct.TYPE_14__, i32, i32, i32, %struct.ipsecrequest**, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.ipsecrequest = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@IPSEC_SPCOUNT = common dso_local global i32 0, align 4
@IPSEC_POLICY_IPSEC = common dso_local global i32 0, align 4
@IPSEC_SPSTATE_DEAD = common dso_local global i32 0, align 4
@time_second = common dso_local global i32 0, align 4
@IPSEC_LEVEL_UNIQUE = common dso_local global i32 0, align 4
@IPPROTO_ESP = common dso_local global i32 0, align 4
@IPSEC_MODE_TUNNEL = common dso_local global i32 0, align 4
@IPSEC_DIR_INBOUND = common dso_local global i32 0, align 4
@IPSEC_DIR_OUTBOUND = common dso_local global i32 0, align 4
@IPSEC_ULPROTO_ANY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipsec_softc*, %struct.secpolicy**, %struct.sockaddr*, %struct.sockaddr*, i32)* @ipsec_newpolicies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipsec_newpolicies(%struct.ipsec_softc* %0, %struct.secpolicy** %1, %struct.sockaddr* %2, %struct.sockaddr* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipsec_softc*, align 8
  %8 = alloca %struct.secpolicy**, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ipsecrequest*, align 8
  %13 = alloca i32, align 4
  store %struct.ipsec_softc* %0, %struct.ipsec_softc** %7, align 8
  store %struct.secpolicy** %1, %struct.secpolicy*** %8, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %9, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @IPSEC_SPCOUNT, align 4
  %15 = zext i32 %14 to i64
  %16 = load %struct.secpolicy**, %struct.secpolicy*** %8, align 8
  %17 = load i32, i32* @IPSEC_SPCOUNT, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 8, %18
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memset(%struct.secpolicy** %16, i32 0, i32 %20)
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %166, %5
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @IPSEC_SPCOUNT, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %169

26:                                               ; preds = %22
  %27 = call %struct.secpolicy* (...) @key_newsp()
  %28 = load %struct.secpolicy**, %struct.secpolicy*** %8, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %28, i64 %30
  store %struct.secpolicy* %27, %struct.secpolicy** %31, align 8
  %32 = icmp eq %struct.secpolicy* %27, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %170

34:                                               ; preds = %26
  %35 = call %struct.ipsecrequest* (...) @ipsec_newisr()
  store %struct.ipsecrequest* %35, %struct.ipsecrequest** %12, align 8
  %36 = icmp eq %struct.ipsecrequest* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %170

38:                                               ; preds = %34
  %39 = load i32, i32* @IPSEC_POLICY_IPSEC, align 4
  %40 = load %struct.secpolicy**, %struct.secpolicy*** %8, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %40, i64 %42
  %44 = load %struct.secpolicy*, %struct.secpolicy** %43, align 8
  %45 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %44, i32 0, i32 6
  store i32 %39, i32* %45, align 4
  %46 = load i32, i32* @IPSEC_SPSTATE_DEAD, align 4
  %47 = load %struct.secpolicy**, %struct.secpolicy*** %8, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %47, i64 %49
  %51 = load %struct.secpolicy*, %struct.secpolicy** %50, align 8
  %52 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %51, i32 0, i32 5
  store i32 %46, i32* %52, align 8
  %53 = load %struct.ipsecrequest*, %struct.ipsecrequest** %12, align 8
  %54 = load %struct.secpolicy**, %struct.secpolicy*** %8, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %54, i64 %56
  %58 = load %struct.secpolicy*, %struct.secpolicy** %57, align 8
  %59 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %58, i32 0, i32 4
  %60 = load %struct.ipsecrequest**, %struct.ipsecrequest*** %59, align 8
  %61 = load %struct.secpolicy**, %struct.secpolicy*** %8, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %61, i64 %63
  %65 = load %struct.secpolicy*, %struct.secpolicy** %64, align 8
  %66 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds %struct.ipsecrequest*, %struct.ipsecrequest** %60, i64 %69
  store %struct.ipsecrequest* %53, %struct.ipsecrequest** %70, align 8
  %71 = load i32, i32* @time_second, align 4
  %72 = load %struct.secpolicy**, %struct.secpolicy*** %8, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %72, i64 %74
  %76 = load %struct.secpolicy*, %struct.secpolicy** %75, align 8
  %77 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %76, i32 0, i32 2
  store i32 %71, i32* %77, align 4
  %78 = load %struct.ipsec_softc*, %struct.ipsec_softc** %7, align 8
  %79 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.secpolicy**, %struct.secpolicy*** %8, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %83, i64 %85
  %87 = load %struct.secpolicy*, %struct.secpolicy** %86, align 8
  %88 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %87, i32 0, i32 1
  store i32 %82, i32* %88, align 8
  %89 = load i32, i32* @IPSEC_LEVEL_UNIQUE, align 4
  %90 = load %struct.ipsecrequest*, %struct.ipsecrequest** %12, align 8
  %91 = getelementptr inbounds %struct.ipsecrequest, %struct.ipsecrequest* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @IPPROTO_ESP, align 4
  %93 = load %struct.ipsecrequest*, %struct.ipsecrequest** %12, align 8
  %94 = getelementptr inbounds %struct.ipsecrequest, %struct.ipsecrequest* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 4
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* @IPSEC_MODE_TUNNEL, align 4
  %97 = load %struct.ipsecrequest*, %struct.ipsecrequest** %12, align 8
  %98 = getelementptr inbounds %struct.ipsecrequest, %struct.ipsecrequest* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 3
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.ipsecrequest*, %struct.ipsecrequest** %12, align 8
  %102 = getelementptr inbounds %struct.ipsecrequest, %struct.ipsecrequest* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* %13, align 4
  %105 = srem i32 %104, 2
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %132

107:                                              ; preds = %38
  %108 = load i32, i32* @IPSEC_DIR_INBOUND, align 4
  %109 = load %struct.secpolicy**, %struct.secpolicy*** %8, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %109, i64 %111
  %113 = load %struct.secpolicy*, %struct.secpolicy** %112, align 8
  %114 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 3
  store i32 %108, i32* %115, align 4
  %116 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %117 = load %struct.ipsecrequest*, %struct.ipsecrequest** %12, align 8
  %118 = getelementptr inbounds %struct.ipsecrequest, %struct.ipsecrequest* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %121 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @bcopy(%struct.sockaddr* %116, i32* %119, i32 %122)
  %124 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %125 = load %struct.ipsecrequest*, %struct.ipsecrequest** %12, align 8
  %126 = getelementptr inbounds %struct.ipsecrequest, %struct.ipsecrequest* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %129 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @bcopy(%struct.sockaddr* %124, i32* %127, i32 %130)
  br label %157

132:                                              ; preds = %38
  %133 = load i32, i32* @IPSEC_DIR_OUTBOUND, align 4
  %134 = load %struct.secpolicy**, %struct.secpolicy*** %8, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %134, i64 %136
  %138 = load %struct.secpolicy*, %struct.secpolicy** %137, align 8
  %139 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 3
  store i32 %133, i32* %140, align 4
  %141 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %142 = load %struct.ipsecrequest*, %struct.ipsecrequest** %12, align 8
  %143 = getelementptr inbounds %struct.ipsecrequest, %struct.ipsecrequest* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %146 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @bcopy(%struct.sockaddr* %141, i32* %144, i32 %147)
  %149 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %150 = load %struct.ipsecrequest*, %struct.ipsecrequest** %12, align 8
  %151 = getelementptr inbounds %struct.ipsecrequest, %struct.ipsecrequest* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %154 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @bcopy(%struct.sockaddr* %149, i32* %152, i32 %155)
  br label %157

157:                                              ; preds = %132, %107
  %158 = load i32, i32* @IPSEC_ULPROTO_ANY, align 4
  %159 = load %struct.secpolicy**, %struct.secpolicy*** %8, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %159, i64 %161
  %163 = load %struct.secpolicy*, %struct.secpolicy** %162, align 8
  %164 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 2
  store i32 %158, i32* %165, align 8
  br label %166

166:                                              ; preds = %157
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %13, align 4
  br label %22

169:                                              ; preds = %22
  store i32 0, i32* %6, align 4
  br label %186

170:                                              ; preds = %37, %33
  store i32 0, i32* %13, align 4
  br label %171

171:                                              ; preds = %181, %170
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* @IPSEC_SPCOUNT, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %184

175:                                              ; preds = %171
  %176 = load %struct.secpolicy**, %struct.secpolicy*** %8, align 8
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %176, i64 %178
  %180 = call i32 @key_freesp(%struct.secpolicy** %179)
  br label %181

181:                                              ; preds = %175
  %182 = load i32, i32* %13, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %13, align 4
  br label %171

184:                                              ; preds = %171
  %185 = load i32, i32* @ENOMEM, align 4
  store i32 %185, i32* %6, align 4
  br label %186

186:                                              ; preds = %184, %169
  %187 = load i32, i32* %6, align 4
  ret i32 %187
}

declare dso_local i32 @memset(%struct.secpolicy**, i32, i32) #1

declare dso_local %struct.secpolicy* @key_newsp(...) #1

declare dso_local %struct.ipsecrequest* @ipsec_newisr(...) #1

declare dso_local i32 @bcopy(%struct.sockaddr*, i32*, i32) #1

declare dso_local i32 @key_freesp(%struct.secpolicy**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
