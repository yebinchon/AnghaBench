; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nptv6/extr_nptv6.c_ifaddr_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nptv6/extr_nptv6.c_ifaddr_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.namedobj_instance = type { i32 }
%struct.named_object = type { i32 }
%struct.ifaddr_event_args = type { i64, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nptv6_cfg = type { i32, i32, i32, i32, i32 }

@V_layer3_chain = common dso_local global %struct.ip_fw_chain zeroinitializer, align 4
@NPTV6_DYNAMIC_PREFIX = common dso_local global i32 0, align 4
@IF_NAMESIZE = common dso_local global i32 0, align 4
@IFF_DYING = common dso_local global i32 0, align 4
@NPTV6_READY = common dso_local global i32 0, align 4
@IFADDR_EVENT_DEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.namedobj_instance*, %struct.named_object*, i8*)* @ifaddr_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifaddr_cb(%struct.namedobj_instance* %0, %struct.named_object* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.namedobj_instance*, align 8
  %6 = alloca %struct.named_object*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ifaddr_event_args*, align 8
  %9 = alloca %struct.ip_fw_chain*, align 8
  %10 = alloca %struct.nptv6_cfg*, align 8
  store %struct.namedobj_instance* %0, %struct.namedobj_instance** %5, align 8
  store %struct.named_object* %1, %struct.named_object** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.ip_fw_chain* @V_layer3_chain, %struct.ip_fw_chain** %9, align 8
  %11 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %9, align 8
  %12 = load %struct.named_object*, %struct.named_object** %6, align 8
  %13 = getelementptr inbounds %struct.named_object, %struct.named_object* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @SRV_OBJECT(%struct.ip_fw_chain* %11, i32 %14)
  %16 = inttoptr i64 %15 to %struct.nptv6_cfg*
  store %struct.nptv6_cfg* %16, %struct.nptv6_cfg** %10, align 8
  %17 = load %struct.nptv6_cfg*, %struct.nptv6_cfg** %10, align 8
  %18 = getelementptr inbounds %struct.nptv6_cfg, %struct.nptv6_cfg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NPTV6_DYNAMIC_PREFIX, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %133

24:                                               ; preds = %3
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast i8* %25 to %struct.ifaddr_event_args*
  store %struct.ifaddr_event_args* %26, %struct.ifaddr_event_args** %8, align 8
  %27 = load %struct.ifaddr_event_args*, %struct.ifaddr_event_args** %8, align 8
  %28 = getelementptr inbounds %struct.ifaddr_event_args, %struct.ifaddr_event_args* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nptv6_cfg*, %struct.nptv6_cfg** %10, align 8
  %33 = getelementptr inbounds %struct.nptv6_cfg, %struct.nptv6_cfg* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IF_NAMESIZE, align 4
  %36 = call i64 @strncmp(i32 %31, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %133

39:                                               ; preds = %24
  %40 = load %struct.ifaddr_event_args*, %struct.ifaddr_event_args** %8, align 8
  %41 = getelementptr inbounds %struct.ifaddr_event_args, %struct.ifaddr_event_args* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IFF_DYING, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = load i32, i32* @NPTV6_READY, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.nptv6_cfg*, %struct.nptv6_cfg** %10, align 8
  %52 = getelementptr inbounds %struct.nptv6_cfg, %struct.nptv6_cfg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  store i32 0, i32* %4, align 4
  br label %133

55:                                               ; preds = %39
  %56 = load %struct.ifaddr_event_args*, %struct.ifaddr_event_args** %8, align 8
  %57 = getelementptr inbounds %struct.ifaddr_event_args, %struct.ifaddr_event_args* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @IFADDR_EVENT_DEL, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %87

61:                                               ; preds = %55
  %62 = load %struct.nptv6_cfg*, %struct.nptv6_cfg** %10, align 8
  %63 = getelementptr inbounds %struct.nptv6_cfg, %struct.nptv6_cfg* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @NPTV6_READY, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %133

69:                                               ; preds = %61
  %70 = load %struct.nptv6_cfg*, %struct.nptv6_cfg** %10, align 8
  %71 = getelementptr inbounds %struct.nptv6_cfg, %struct.nptv6_cfg* %70, i32 0, i32 3
  %72 = load %struct.ifaddr_event_args*, %struct.ifaddr_event_args** %8, align 8
  %73 = getelementptr inbounds %struct.ifaddr_event_args, %struct.ifaddr_event_args* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.nptv6_cfg*, %struct.nptv6_cfg** %10, align 8
  %76 = getelementptr inbounds %struct.nptv6_cfg, %struct.nptv6_cfg* %75, i32 0, i32 1
  %77 = call i64 @IN6_ARE_MASKED_ADDR_EQUAL(i32* %71, i32* %74, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %133

80:                                               ; preds = %69
  %81 = load i32, i32* @NPTV6_READY, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.nptv6_cfg*, %struct.nptv6_cfg** %10, align 8
  %84 = getelementptr inbounds %struct.nptv6_cfg, %struct.nptv6_cfg* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %113

87:                                               ; preds = %55
  %88 = load %struct.nptv6_cfg*, %struct.nptv6_cfg** %10, align 8
  %89 = getelementptr inbounds %struct.nptv6_cfg, %struct.nptv6_cfg* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @NPTV6_READY, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %133

95:                                               ; preds = %87
  %96 = load %struct.ifaddr_event_args*, %struct.ifaddr_event_args** %8, align 8
  %97 = getelementptr inbounds %struct.ifaddr_event_args, %struct.ifaddr_event_args* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = call i64 @nptv6_check_prefix(i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %95
  %102 = load %struct.ifaddr_event_args*, %struct.ifaddr_event_args** %8, align 8
  %103 = getelementptr inbounds %struct.ifaddr_event_args, %struct.ifaddr_event_args* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.nptv6_cfg*, %struct.nptv6_cfg** %10, align 8
  %106 = getelementptr inbounds %struct.nptv6_cfg, %struct.nptv6_cfg* %105, i32 0, i32 2
  %107 = load %struct.nptv6_cfg*, %struct.nptv6_cfg** %10, align 8
  %108 = getelementptr inbounds %struct.nptv6_cfg, %struct.nptv6_cfg* %107, i32 0, i32 1
  %109 = call i64 @IN6_ARE_MASKED_ADDR_EQUAL(i32* %104, i32* %106, i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %101, %95
  store i32 0, i32* %4, align 4
  br label %133

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %112, %80
  %114 = load %struct.nptv6_cfg*, %struct.nptv6_cfg** %10, align 8
  %115 = getelementptr inbounds %struct.nptv6_cfg, %struct.nptv6_cfg* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @NPTV6_READY, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = call i32 @MPASS(i32 %121)
  %123 = load %struct.ifaddr_event_args*, %struct.ifaddr_event_args** %8, align 8
  %124 = getelementptr inbounds %struct.ifaddr_event_args, %struct.ifaddr_event_args* %123, i32 0, i32 1
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = call i32 @if_ref(%struct.TYPE_3__* %125)
  %127 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %9, align 8
  %128 = load %struct.nptv6_cfg*, %struct.nptv6_cfg** %10, align 8
  %129 = load %struct.ifaddr_event_args*, %struct.ifaddr_event_args** %8, align 8
  %130 = getelementptr inbounds %struct.ifaddr_event_args, %struct.ifaddr_event_args* %129, i32 0, i32 1
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = call i32 @nptv6_find_prefix(%struct.ip_fw_chain* %127, %struct.nptv6_cfg* %128, %struct.TYPE_3__* %131)
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %113, %111, %94, %79, %68, %48, %38, %23
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i64 @SRV_OBJECT(%struct.ip_fw_chain*, i32) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i64 @IN6_ARE_MASKED_ADDR_EQUAL(i32*, i32*, i32*) #1

declare dso_local i64 @nptv6_check_prefix(i32*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @if_ref(%struct.TYPE_3__*) #1

declare dso_local i32 @nptv6_find_prefix(%struct.ip_fw_chain*, %struct.nptv6_cfg*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
