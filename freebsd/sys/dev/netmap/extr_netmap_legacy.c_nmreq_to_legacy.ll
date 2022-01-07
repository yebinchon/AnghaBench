; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_legacy.c_nmreq_to_legacy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_legacy.c_nmreq_to_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmreq_header = type { i32, i32, i32 }
%struct.nmreq = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nmreq_register = type { i32 }
%struct.nmreq_port_info_get = type { i32, i32, i32, i32, i32, i32 }
%struct.nmreq_vale_attach = type { %struct.nmreq_register }
%struct.nmreq_vale_list = type { i32, i32 }
%struct.nmreq_port_hdr = type { i32 }
%struct.nmreq_vale_newif = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nmreq_header*, %struct.nmreq*)* @nmreq_to_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nmreq_to_legacy(%struct.nmreq_header* %0, %struct.nmreq* %1) #0 {
  %3 = alloca %struct.nmreq_header*, align 8
  %4 = alloca %struct.nmreq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nmreq_register*, align 8
  %7 = alloca %struct.nmreq_port_info_get*, align 8
  %8 = alloca %struct.nmreq_vale_attach*, align 8
  %9 = alloca %struct.nmreq_vale_list*, align 8
  %10 = alloca %struct.nmreq_port_hdr*, align 8
  %11 = alloca %struct.nmreq_vale_newif*, align 8
  store %struct.nmreq_header* %0, %struct.nmreq_header** %3, align 8
  store %struct.nmreq* %1, %struct.nmreq** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.nmreq_header*, %struct.nmreq_header** %3, align 8
  %13 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %137 [
    i32 135, label %15
    i32 136, label %24
    i32 134, label %60
    i32 132, label %70
    i32 131, label %71
    i32 137, label %94
    i32 138, label %94
    i32 130, label %105
    i32 133, label %136
    i32 128, label %136
    i32 129, label %136
  ]

15:                                               ; preds = %2
  %16 = load %struct.nmreq_header*, %struct.nmreq_header** %3, align 8
  %17 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to %struct.nmreq_register*
  store %struct.nmreq_register* %20, %struct.nmreq_register** %6, align 8
  %21 = load %struct.nmreq_register*, %struct.nmreq_register** %6, align 8
  %22 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %23 = call i32 @nmreq_register_to_legacy(%struct.nmreq_register* %21, %struct.nmreq* %22)
  br label %137

24:                                               ; preds = %2
  %25 = load %struct.nmreq_header*, %struct.nmreq_header** %3, align 8
  %26 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to %struct.nmreq_port_info_get*
  store %struct.nmreq_port_info_get* %29, %struct.nmreq_port_info_get** %7, align 8
  %30 = load %struct.nmreq_port_info_get*, %struct.nmreq_port_info_get** %7, align 8
  %31 = getelementptr inbounds %struct.nmreq_port_info_get, %struct.nmreq_port_info_get* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %34 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 4
  %35 = load %struct.nmreq_port_info_get*, %struct.nmreq_port_info_get** %7, align 8
  %36 = getelementptr inbounds %struct.nmreq_port_info_get, %struct.nmreq_port_info_get* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %39 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.nmreq_port_info_get*, %struct.nmreq_port_info_get** %7, align 8
  %41 = getelementptr inbounds %struct.nmreq_port_info_get, %struct.nmreq_port_info_get* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %44 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.nmreq_port_info_get*, %struct.nmreq_port_info_get** %7, align 8
  %46 = getelementptr inbounds %struct.nmreq_port_info_get, %struct.nmreq_port_info_get* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %49 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.nmreq_port_info_get*, %struct.nmreq_port_info_get** %7, align 8
  %51 = getelementptr inbounds %struct.nmreq_port_info_get, %struct.nmreq_port_info_get* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %54 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.nmreq_port_info_get*, %struct.nmreq_port_info_get** %7, align 8
  %56 = getelementptr inbounds %struct.nmreq_port_info_get, %struct.nmreq_port_info_get* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %59 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %137

60:                                               ; preds = %2
  %61 = load %struct.nmreq_header*, %struct.nmreq_header** %3, align 8
  %62 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to %struct.nmreq_vale_attach*
  store %struct.nmreq_vale_attach* %65, %struct.nmreq_vale_attach** %8, align 8
  %66 = load %struct.nmreq_vale_attach*, %struct.nmreq_vale_attach** %8, align 8
  %67 = getelementptr inbounds %struct.nmreq_vale_attach, %struct.nmreq_vale_attach* %66, i32 0, i32 0
  %68 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %69 = call i32 @nmreq_register_to_legacy(%struct.nmreq_register* %67, %struct.nmreq* %68)
  br label %137

70:                                               ; preds = %2
  br label %137

71:                                               ; preds = %2
  %72 = load %struct.nmreq_header*, %struct.nmreq_header** %3, align 8
  %73 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to %struct.nmreq_vale_list*
  store %struct.nmreq_vale_list* %76, %struct.nmreq_vale_list** %9, align 8
  %77 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %78 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.nmreq_header*, %struct.nmreq_header** %3, align 8
  %81 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @strlcpy(i32 %79, i32 %82, i32 4)
  %84 = load %struct.nmreq_vale_list*, %struct.nmreq_vale_list** %9, align 8
  %85 = getelementptr inbounds %struct.nmreq_vale_list, %struct.nmreq_vale_list* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %88 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  %89 = load %struct.nmreq_vale_list*, %struct.nmreq_vale_list** %9, align 8
  %90 = getelementptr inbounds %struct.nmreq_vale_list, %struct.nmreq_vale_list* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %93 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  br label %137

94:                                               ; preds = %2, %2
  %95 = load %struct.nmreq_header*, %struct.nmreq_header** %3, align 8
  %96 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to %struct.nmreq_port_hdr*
  store %struct.nmreq_port_hdr* %99, %struct.nmreq_port_hdr** %10, align 8
  %100 = load %struct.nmreq_port_hdr*, %struct.nmreq_port_hdr** %10, align 8
  %101 = getelementptr inbounds %struct.nmreq_port_hdr, %struct.nmreq_port_hdr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %104 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 4
  br label %137

105:                                              ; preds = %2
  %106 = load %struct.nmreq_header*, %struct.nmreq_header** %3, align 8
  %107 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to %struct.nmreq_vale_newif*
  store %struct.nmreq_vale_newif* %110, %struct.nmreq_vale_newif** %11, align 8
  %111 = load %struct.nmreq_vale_newif*, %struct.nmreq_vale_newif** %11, align 8
  %112 = getelementptr inbounds %struct.nmreq_vale_newif, %struct.nmreq_vale_newif* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %115 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  %116 = load %struct.nmreq_vale_newif*, %struct.nmreq_vale_newif** %11, align 8
  %117 = getelementptr inbounds %struct.nmreq_vale_newif, %struct.nmreq_vale_newif* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %120 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load %struct.nmreq_vale_newif*, %struct.nmreq_vale_newif** %11, align 8
  %122 = getelementptr inbounds %struct.nmreq_vale_newif, %struct.nmreq_vale_newif* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %125 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  %126 = load %struct.nmreq_vale_newif*, %struct.nmreq_vale_newif** %11, align 8
  %127 = getelementptr inbounds %struct.nmreq_vale_newif, %struct.nmreq_vale_newif* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %130 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.nmreq_vale_newif*, %struct.nmreq_vale_newif** %11, align 8
  %132 = getelementptr inbounds %struct.nmreq_vale_newif, %struct.nmreq_vale_newif* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.nmreq*, %struct.nmreq** %4, align 8
  %135 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  br label %137

136:                                              ; preds = %2, %2, %2
  br label %137

137:                                              ; preds = %2, %136, %105, %94, %71, %70, %60, %24, %15
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @nmreq_register_to_legacy(%struct.nmreq_register*, %struct.nmreq*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
