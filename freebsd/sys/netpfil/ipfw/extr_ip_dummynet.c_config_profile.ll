; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_config_profile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_config_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.dn_profile = type { i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.dn_id = type { i32 }
%struct.dn_schk = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"short profile len %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DN_MAX_ID = common dso_local global i32 0, align 4
@dn_cfg = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@M_DUMMYNET = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"no memory for profile %d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_profile*, %struct.dn_id*)* @config_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_profile(%struct.dn_profile* %0, %struct.dn_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dn_profile*, align 8
  %5 = alloca %struct.dn_id*, align 8
  %6 = alloca %struct.dn_schk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dn_profile* %0, %struct.dn_profile** %4, align 8
  store %struct.dn_id* %1, %struct.dn_id** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.dn_profile*, %struct.dn_profile** %4, align 8
  %11 = getelementptr inbounds %struct.dn_profile, %struct.dn_profile* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 24
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.dn_profile*, %struct.dn_profile** %4, align 8
  %18 = getelementptr inbounds %struct.dn_profile, %struct.dn_profile* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @D(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %3, align 4
  br label %154

23:                                               ; preds = %2
  %24 = load %struct.dn_profile*, %struct.dn_profile** %4, align 8
  %25 = getelementptr inbounds %struct.dn_profile, %struct.dn_profile* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @DN_MAX_ID, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %23
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %3, align 4
  br label %154

35:                                               ; preds = %29
  %36 = call i32 (...) @DN_BH_WLOCK()
  br label %37

37:                                               ; preds = %147, %35
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @DN_MAX_ID, align 4
  %40 = mul nsw i32 2, %39
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %151

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.dn_schk* @locate_scheduler(i32 %43)
  store %struct.dn_schk* %44, %struct.dn_schk** %6, align 8
  %45 = load %struct.dn_schk*, %struct.dn_schk** %6, align 8
  %46 = icmp eq %struct.dn_schk* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %9, align 4
  br label %151

49:                                               ; preds = %42
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dn_cfg, i32 0, i32 0), align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dn_cfg, i32 0, i32 0), align 4
  %52 = load %struct.dn_schk*, %struct.dn_schk** %6, align 8
  %53 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = icmp ne %struct.TYPE_9__* %54, null
  br i1 %55, label %56, label %81

56:                                               ; preds = %49
  %57 = load %struct.dn_profile*, %struct.dn_profile** %4, align 8
  %58 = getelementptr inbounds %struct.dn_profile, %struct.dn_profile* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %56
  %62 = load %struct.dn_schk*, %struct.dn_schk** %6, align 8
  %63 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.dn_profile*, %struct.dn_profile** %4, align 8
  %69 = getelementptr inbounds %struct.dn_profile, %struct.dn_profile* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %67, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %61, %56
  %74 = load %struct.dn_schk*, %struct.dn_schk** %6, align 8
  %75 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load i32, i32* @M_DUMMYNET, align 4
  %78 = call i32 @free(%struct.TYPE_9__* %76, i32 %77)
  %79 = load %struct.dn_schk*, %struct.dn_schk** %6, align 8
  %80 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %79, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %80, align 8
  br label %81

81:                                               ; preds = %73, %61, %49
  %82 = load %struct.dn_profile*, %struct.dn_profile** %4, align 8
  %83 = getelementptr inbounds %struct.dn_profile, %struct.dn_profile* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %147

87:                                               ; preds = %81
  %88 = load %struct.dn_schk*, %struct.dn_schk** %6, align 8
  %89 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = icmp eq %struct.TYPE_9__* %90, null
  br i1 %91, label %92, label %104

92:                                               ; preds = %87
  %93 = load %struct.dn_profile*, %struct.dn_profile** %4, align 8
  %94 = getelementptr inbounds %struct.dn_profile, %struct.dn_profile* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @M_DUMMYNET, align 4
  %98 = load i32, i32* @M_NOWAIT, align 4
  %99 = load i32, i32* @M_ZERO, align 4
  %100 = or i32 %98, %99
  %101 = call %struct.TYPE_9__* @malloc(i32 %96, i32 %97, i32 %100)
  %102 = load %struct.dn_schk*, %struct.dn_schk** %6, align 8
  %103 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %102, i32 0, i32 0
  store %struct.TYPE_9__* %101, %struct.TYPE_9__** %103, align 8
  br label %104

104:                                              ; preds = %92, %87
  %105 = load %struct.dn_schk*, %struct.dn_schk** %6, align 8
  %106 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %105, i32 0, i32 0
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = icmp eq %struct.TYPE_9__* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @D(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @ENOMEM, align 4
  store i32 %112, i32* %9, align 4
  br label %151

113:                                              ; preds = %104
  %114 = load %struct.dn_schk*, %struct.dn_schk** %6, align 8
  %115 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %114, i32 0, i32 0
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.dn_profile*, %struct.dn_profile** %4, align 8
  %122 = getelementptr inbounds %struct.dn_profile, %struct.dn_profile* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %120, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %113
  %127 = load %struct.dn_profile*, %struct.dn_profile** %4, align 8
  %128 = getelementptr inbounds %struct.dn_profile, %struct.dn_profile* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %126, %113
  %132 = load %struct.dn_schk*, %struct.dn_schk** %6, align 8
  %133 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %132, i32 0, i32 0
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = load %struct.dn_profile*, %struct.dn_profile** %4, align 8
  %136 = load %struct.dn_profile*, %struct.dn_profile** %4, align 8
  %137 = getelementptr inbounds %struct.dn_profile, %struct.dn_profile* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @memcpy(%struct.TYPE_9__* %134, %struct.dn_profile* %135, i32 %139)
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.dn_schk*, %struct.dn_schk** %6, align 8
  %143 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %142, i32 0, i32 0
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  store i32 %141, i32* %146, align 4
  br label %147

147:                                              ; preds = %131, %86
  %148 = load i32, i32* @DN_MAX_ID, align 4
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %7, align 4
  br label %37

151:                                              ; preds = %109, %47, %37
  %152 = call i32 (...) @DN_BH_WUNLOCK()
  %153 = load i32, i32* %9, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %151, %33, %16
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @D(i8*, i32) #1

declare dso_local i32 @DN_BH_WLOCK(...) #1

declare dso_local %struct.dn_schk* @locate_scheduler(i32) #1

declare dso_local i32 @free(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.TYPE_9__* @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.dn_profile*, i32) #1

declare dso_local i32 @DN_BH_WUNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
