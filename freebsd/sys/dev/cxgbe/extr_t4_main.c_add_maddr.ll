; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_add_maddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_add_maddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i32 }
%struct.mcaddr_ctx = type { i64, i64, i64, i32**, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.vi_info* }
%struct.vi_info = type { i32, %struct.port_info* }
%struct.port_info = type { %struct.adapter* }
%struct.adapter = type { i32 }

@FW_MAC_EXACT_CHUNK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"failed to add mc address %02x:%02x:%02x:%02x:%02x:%02x rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_dl*, i32)* @add_maddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_maddr(i8* %0, %struct.sockaddr_dl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_dl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mcaddr_ctx*, align 8
  %9 = alloca %struct.vi_info*, align 8
  %10 = alloca %struct.port_info*, align 8
  %11 = alloca %struct.adapter*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.sockaddr_dl* %1, %struct.sockaddr_dl** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.mcaddr_ctx*
  store %struct.mcaddr_ctx* %14, %struct.mcaddr_ctx** %8, align 8
  %15 = load %struct.mcaddr_ctx*, %struct.mcaddr_ctx** %8, align 8
  %16 = getelementptr inbounds %struct.mcaddr_ctx, %struct.mcaddr_ctx* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.vi_info*, %struct.vi_info** %18, align 8
  store %struct.vi_info* %19, %struct.vi_info** %9, align 8
  %20 = load %struct.vi_info*, %struct.vi_info** %9, align 8
  %21 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %20, i32 0, i32 1
  %22 = load %struct.port_info*, %struct.port_info** %21, align 8
  store %struct.port_info* %22, %struct.port_info** %10, align 8
  %23 = load %struct.port_info*, %struct.port_info** %10, align 8
  %24 = getelementptr inbounds %struct.port_info, %struct.port_info* %23, i32 0, i32 0
  %25 = load %struct.adapter*, %struct.adapter** %24, align 8
  store %struct.adapter* %25, %struct.adapter** %11, align 8
  %26 = load %struct.mcaddr_ctx*, %struct.mcaddr_ctx** %8, align 8
  %27 = getelementptr inbounds %struct.mcaddr_ctx, %struct.mcaddr_ctx* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %167

31:                                               ; preds = %3
  %32 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %33 = call i32* @LLADDR(%struct.sockaddr_dl* %32)
  %34 = load %struct.mcaddr_ctx*, %struct.mcaddr_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.mcaddr_ctx, %struct.mcaddr_ctx* %34, i32 0, i32 3
  %36 = load i32**, i32*** %35, align 8
  %37 = load %struct.mcaddr_ctx*, %struct.mcaddr_ctx** %8, align 8
  %38 = getelementptr inbounds %struct.mcaddr_ctx, %struct.mcaddr_ctx* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32*, i32** %36, i64 %39
  store i32* %33, i32** %40, align 8
  %41 = load %struct.mcaddr_ctx*, %struct.mcaddr_ctx** %8, align 8
  %42 = getelementptr inbounds %struct.mcaddr_ctx, %struct.mcaddr_ctx* %41, i32 0, i32 3
  %43 = load i32**, i32*** %42, align 8
  %44 = load %struct.mcaddr_ctx*, %struct.mcaddr_ctx** %8, align 8
  %45 = getelementptr inbounds %struct.mcaddr_ctx, %struct.mcaddr_ctx* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32*, i32** %43, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @ETHER_IS_MULTICAST(i32* %48)
  %50 = call i32 @MPASS(i32 %49)
  %51 = load %struct.mcaddr_ctx*, %struct.mcaddr_ctx** %8, align 8
  %52 = getelementptr inbounds %struct.mcaddr_ctx, %struct.mcaddr_ctx* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = load %struct.mcaddr_ctx*, %struct.mcaddr_ctx** %8, align 8
  %56 = getelementptr inbounds %struct.mcaddr_ctx, %struct.mcaddr_ctx* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @FW_MAC_EXACT_CHUNK, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %166

60:                                               ; preds = %31
  %61 = load %struct.adapter*, %struct.adapter** %11, align 8
  %62 = load %struct.adapter*, %struct.adapter** %11, align 8
  %63 = getelementptr inbounds %struct.adapter, %struct.adapter* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vi_info*, %struct.vi_info** %9, align 8
  %66 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.mcaddr_ctx*, %struct.mcaddr_ctx** %8, align 8
  %69 = getelementptr inbounds %struct.mcaddr_ctx, %struct.mcaddr_ctx* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.mcaddr_ctx*, %struct.mcaddr_ctx** %8, align 8
  %72 = getelementptr inbounds %struct.mcaddr_ctx, %struct.mcaddr_ctx* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.mcaddr_ctx*, %struct.mcaddr_ctx** %8, align 8
  %75 = getelementptr inbounds %struct.mcaddr_ctx, %struct.mcaddr_ctx* %74, i32 0, i32 3
  %76 = load i32**, i32*** %75, align 8
  %77 = load %struct.mcaddr_ctx*, %struct.mcaddr_ctx** %8, align 8
  %78 = getelementptr inbounds %struct.mcaddr_ctx, %struct.mcaddr_ctx* %77, i32 0, i32 5
  %79 = call i64 @t4_alloc_mac_filt(%struct.adapter* %61, i32 %64, i32 %67, i64 %70, i64 %73, i32** %76, i32* null, i32* %78, i32 0)
  %80 = load %struct.mcaddr_ctx*, %struct.mcaddr_ctx** %8, align 8
  %81 = getelementptr inbounds %struct.mcaddr_ctx, %struct.mcaddr_ctx* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.mcaddr_ctx*, %struct.mcaddr_ctx** %8, align 8
  %83 = getelementptr inbounds %struct.mcaddr_ctx, %struct.mcaddr_ctx* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %161

86:                                               ; preds = %60
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %157, %86
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = load %struct.mcaddr_ctx*, %struct.mcaddr_ctx** %8, align 8
  %91 = getelementptr inbounds %struct.mcaddr_ctx, %struct.mcaddr_ctx* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ult i64 %89, %92
  br i1 %93, label %94, label %160

94:                                               ; preds = %87
  %95 = load %struct.mcaddr_ctx*, %struct.mcaddr_ctx** %8, align 8
  %96 = getelementptr inbounds %struct.mcaddr_ctx, %struct.mcaddr_ctx* %95, i32 0, i32 4
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load %struct.mcaddr_ctx*, %struct.mcaddr_ctx** %8, align 8
  %99 = getelementptr inbounds %struct.mcaddr_ctx, %struct.mcaddr_ctx* %98, i32 0, i32 3
  %100 = load i32**, i32*** %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.mcaddr_ctx*, %struct.mcaddr_ctx** %8, align 8
  %108 = getelementptr inbounds %struct.mcaddr_ctx, %struct.mcaddr_ctx* %107, i32 0, i32 3
  %109 = load i32**, i32*** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %109, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.mcaddr_ctx*, %struct.mcaddr_ctx** %8, align 8
  %117 = getelementptr inbounds %struct.mcaddr_ctx, %struct.mcaddr_ctx* %116, i32 0, i32 3
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.mcaddr_ctx*, %struct.mcaddr_ctx** %8, align 8
  %126 = getelementptr inbounds %struct.mcaddr_ctx, %struct.mcaddr_ctx* %125, i32 0, i32 3
  %127 = load i32**, i32*** %126, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %127, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.mcaddr_ctx*, %struct.mcaddr_ctx** %8, align 8
  %135 = getelementptr inbounds %struct.mcaddr_ctx, %struct.mcaddr_ctx* %134, i32 0, i32 3
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 4
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.mcaddr_ctx*, %struct.mcaddr_ctx** %8, align 8
  %144 = getelementptr inbounds %struct.mcaddr_ctx, %struct.mcaddr_ctx* %143, i32 0, i32 3
  %145 = load i32**, i32*** %144, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %145, i64 %147
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 5
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.mcaddr_ctx*, %struct.mcaddr_ctx** %8, align 8
  %153 = getelementptr inbounds %struct.mcaddr_ctx, %struct.mcaddr_ctx* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = sub nsw i64 0, %154
  %156 = call i32 @if_printf(%struct.TYPE_2__* %97, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %115, i32 %124, i32 %133, i32 %142, i32 %151, i64 %155)
  br label %157

157:                                              ; preds = %94
  %158 = load i32, i32* %12, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %12, align 4
  br label %87

160:                                              ; preds = %87
  store i32 0, i32* %4, align 4
  br label %167

161:                                              ; preds = %60
  %162 = load %struct.mcaddr_ctx*, %struct.mcaddr_ctx** %8, align 8
  %163 = getelementptr inbounds %struct.mcaddr_ctx, %struct.mcaddr_ctx* %162, i32 0, i32 2
  store i64 0, i64* %163, align 8
  %164 = load %struct.mcaddr_ctx*, %struct.mcaddr_ctx** %8, align 8
  %165 = getelementptr inbounds %struct.mcaddr_ctx, %struct.mcaddr_ctx* %164, i32 0, i32 1
  store i64 0, i64* %165, align 8
  br label %166

166:                                              ; preds = %161, %31
  store i32 1, i32* %4, align 4
  br label %167

167:                                              ; preds = %166, %160, %30
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i32* @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @ETHER_IS_MULTICAST(i32*) #1

declare dso_local i64 @t4_alloc_mac_filt(%struct.adapter*, i32, i32, i64, i64, i32**, i32*, i32*, i32) #1

declare dso_local i32 @if_printf(%struct.TYPE_2__*, i8*, i32, i32, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
