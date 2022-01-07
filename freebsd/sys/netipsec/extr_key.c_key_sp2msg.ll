; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_sp2msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_sp2msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secpolicy = type { i64, i32, i32, %struct.ipsecrequest**, i32, i32, %struct.TYPE_5__ }
%struct.ipsecrequest = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.sadb_x_ipsecrequest = type { i64, i32, i32, i32, i32 }
%struct.sadb_x_policy = type { i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"null policy\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SADB_X_EXT_POLICY = common dso_local global i32 0, align 4
@IPSEC_POLICYSCOPE_IFNET = common dso_local global i32 0, align 4
@IPSEC_POLICYSCOPE_PCB = common dso_local global i32 0, align 4
@IPSEC_POLICYSCOPE_GLOBAL = common dso_local global i32 0, align 4
@IPSEC_POLICY_IPSEC = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @key_sp2msg(%struct.secpolicy* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.secpolicy*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.sadb_x_ipsecrequest*, align 8
  %9 = alloca %struct.sadb_x_policy*, align 8
  %10 = alloca %struct.ipsecrequest*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.secpolicy* %0, %struct.secpolicy** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %16 = load %struct.secpolicy*, %struct.secpolicy** %5, align 8
  %17 = icmp ne %struct.secpolicy* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @IPSEC_ASSERT(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i64 32, i64* %11, align 8
  %20 = load i64*, i64** %7, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %207

26:                                               ; preds = %3
  store i32 0, i32* %14, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = load i64*, i64** %7, align 8
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @bzero(i8* %27, i64 %29)
  %31 = load i8*, i8** %6, align 8
  %32 = bitcast i8* %31 to %struct.sadb_x_policy*
  store %struct.sadb_x_policy* %32, %struct.sadb_x_policy** %9, align 8
  %33 = load i32, i32* @SADB_X_EXT_POLICY, align 4
  %34 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %9, align 8
  %35 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  %36 = load %struct.secpolicy*, %struct.secpolicy** %5, align 8
  %37 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %9, align 8
  %40 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.secpolicy*, %struct.secpolicy** %5, align 8
  %42 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %9, align 8
  %46 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load %struct.secpolicy*, %struct.secpolicy** %5, align 8
  %48 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %9, align 8
  %51 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load %struct.secpolicy*, %struct.secpolicy** %5, align 8
  %53 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %9, align 8
  %56 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.secpolicy*, %struct.secpolicy** %5, align 8
  %58 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %68 [
    i32 129, label %60
    i32 128, label %64
  ]

60:                                               ; preds = %26
  %61 = load i32, i32* @IPSEC_POLICYSCOPE_IFNET, align 4
  %62 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %9, align 8
  %63 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  br label %72

64:                                               ; preds = %26
  %65 = load i32, i32* @IPSEC_POLICYSCOPE_PCB, align 4
  %66 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %9, align 8
  %67 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  br label %72

68:                                               ; preds = %26
  %69 = load i32, i32* @IPSEC_POLICYSCOPE_GLOBAL, align 4
  %70 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %9, align 8
  %71 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %64, %60
  %73 = load %struct.secpolicy*, %struct.secpolicy** %5, align 8
  %74 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @IPSEC_POLICY_IPSEC, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %193

78:                                               ; preds = %72
  %79 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %9, align 8
  %80 = ptrtoint %struct.sadb_x_policy* %79 to i64
  %81 = add i64 %80, 32
  store i64 %81, i64* %13, align 8
  store i32 0, i32* %15, align 4
  br label %82

82:                                               ; preds = %189, %78
  %83 = load i32, i32* %15, align 4
  %84 = load %struct.secpolicy*, %struct.secpolicy** %5, align 8
  %85 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %192

88:                                               ; preds = %82
  %89 = load %struct.secpolicy*, %struct.secpolicy** %5, align 8
  %90 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %89, i32 0, i32 3
  %91 = load %struct.ipsecrequest**, %struct.ipsecrequest*** %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.ipsecrequest*, %struct.ipsecrequest** %91, i64 %93
  %95 = load %struct.ipsecrequest*, %struct.ipsecrequest** %94, align 8
  store %struct.ipsecrequest* %95, %struct.ipsecrequest** %10, align 8
  %96 = load %struct.ipsecrequest*, %struct.ipsecrequest** %10, align 8
  %97 = getelementptr inbounds %struct.ipsecrequest, %struct.ipsecrequest* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add i64 24, %101
  %103 = load %struct.ipsecrequest*, %struct.ipsecrequest** %10, align 8
  %104 = getelementptr inbounds %struct.ipsecrequest, %struct.ipsecrequest* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %102, %108
  %110 = call i64 @PFKEY_ALIGN8(i64 %109)
  store i64 %110, i64* %12, align 8
  %111 = load i64, i64* %12, align 8
  %112 = load i64, i64* %11, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %11, align 8
  %114 = load i64, i64* %11, align 8
  %115 = load i64*, i64** %7, align 8
  %116 = load i64, i64* %115, align 8
  %117 = icmp ugt i64 %114, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %88
  %119 = load i32, i32* @ENOBUFS, align 4
  store i32 %119, i32* %14, align 4
  br label %189

120:                                              ; preds = %88
  %121 = load i64, i64* %13, align 8
  %122 = inttoptr i64 %121 to %struct.sadb_x_ipsecrequest*
  store %struct.sadb_x_ipsecrequest* %122, %struct.sadb_x_ipsecrequest** %8, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %8, align 8
  %125 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = load %struct.ipsecrequest*, %struct.ipsecrequest** %10, align 8
  %127 = getelementptr inbounds %struct.ipsecrequest, %struct.ipsecrequest* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %8, align 8
  %131 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 4
  %132 = load %struct.ipsecrequest*, %struct.ipsecrequest** %10, align 8
  %133 = getelementptr inbounds %struct.ipsecrequest, %struct.ipsecrequest* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %8, align 8
  %137 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 8
  %138 = load %struct.ipsecrequest*, %struct.ipsecrequest** %10, align 8
  %139 = getelementptr inbounds %struct.ipsecrequest, %struct.ipsecrequest* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %8, align 8
  %142 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 4
  %143 = load %struct.ipsecrequest*, %struct.ipsecrequest** %10, align 8
  %144 = getelementptr inbounds %struct.ipsecrequest, %struct.ipsecrequest* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %8, align 8
  %148 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  %149 = load i64, i64* %13, align 8
  %150 = add i64 %149, 24
  store i64 %150, i64* %13, align 8
  %151 = load %struct.ipsecrequest*, %struct.ipsecrequest** %10, align 8
  %152 = getelementptr inbounds %struct.ipsecrequest, %struct.ipsecrequest* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i64, i64* %13, align 8
  %155 = load %struct.ipsecrequest*, %struct.ipsecrequest** %10, align 8
  %156 = getelementptr inbounds %struct.ipsecrequest, %struct.ipsecrequest* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @bcopy(%struct.TYPE_8__* %153, i64 %154, i64 %160)
  %162 = load %struct.ipsecrequest*, %struct.ipsecrequest** %10, align 8
  %163 = getelementptr inbounds %struct.ipsecrequest, %struct.ipsecrequest* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %13, align 8
  %169 = add nsw i64 %168, %167
  store i64 %169, i64* %13, align 8
  %170 = load %struct.ipsecrequest*, %struct.ipsecrequest** %10, align 8
  %171 = getelementptr inbounds %struct.ipsecrequest, %struct.ipsecrequest* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i64, i64* %13, align 8
  %174 = load %struct.ipsecrequest*, %struct.ipsecrequest** %10, align 8
  %175 = getelementptr inbounds %struct.ipsecrequest, %struct.ipsecrequest* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @bcopy(%struct.TYPE_8__* %172, i64 %173, i64 %179)
  %181 = load %struct.ipsecrequest*, %struct.ipsecrequest** %10, align 8
  %182 = getelementptr inbounds %struct.ipsecrequest, %struct.ipsecrequest* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* %13, align 8
  %188 = add nsw i64 %187, %186
  store i64 %188, i64* %13, align 8
  br label %189

189:                                              ; preds = %120, %118
  %190 = load i32, i32* %15, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %15, align 4
  br label %82

192:                                              ; preds = %82
  br label %193

193:                                              ; preds = %192, %72
  %194 = load i64, i64* %11, align 8
  %195 = call i32 @PFKEY_UNIT64(i64 %194)
  %196 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %9, align 8
  %197 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 8
  %198 = load i32, i32* %14, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %193
  %201 = load i64, i64* %11, align 8
  %202 = load i64*, i64** %7, align 8
  store i64 %201, i64* %202, align 8
  br label %205

203:                                              ; preds = %193
  %204 = load i64*, i64** %7, align 8
  store i64 32, i64* %204, align 8
  br label %205

205:                                              ; preds = %203, %200
  %206 = load i32, i32* %14, align 4
  store i32 %206, i32* %4, align 4
  br label %207

207:                                              ; preds = %205, %24
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

declare dso_local i32 @IPSEC_ASSERT(i32, i8*) #1

declare dso_local i32 @bzero(i8*, i64) #1

declare dso_local i64 @PFKEY_ALIGN8(i64) #1

declare dso_local i32 @bcopy(%struct.TYPE_8__*, i64, i64) #1

declare dso_local i32 @PFKEY_UNIT64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
