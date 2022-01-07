; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gssd_prot.c_xdr_gss_channel_bindings_t.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gssd_prot.c_xdr_gss_channel_bindings_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@GSS_C_NO_CHANNEL_BINDINGS = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_gss_channel_bindings_t(%struct.TYPE_13__* %0, %struct.TYPE_12__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__**, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__** %1, %struct.TYPE_12__*** %5, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %137 [
    i32 129, label %11
    i32 130, label %63
    i32 128, label %116
  ]

11:                                               ; preds = %2
  %12 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %6, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %15 = icmp ne %struct.TYPE_12__* %14, null
  br i1 %15, label %16, label %54

16:                                               ; preds = %11
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = call i32 @xdr_bool(%struct.TYPE_13__* %18, i32* %7)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %16
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 4
  %25 = call i32 @xdr_uint32_t(%struct.TYPE_13__* %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %21
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = call i32 @xdr_gss_buffer_desc(%struct.TYPE_13__* %28, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %27
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 3
  %37 = call i32 @xdr_uint32_t(%struct.TYPE_13__* %34, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = call i32 @xdr_gss_buffer_desc(%struct.TYPE_13__* %40, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = call i32 @xdr_gss_buffer_desc(%struct.TYPE_13__* %46, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %45, %39, %33, %27, %21, %16
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %3, align 4
  br label %139

53:                                               ; preds = %45
  br label %62

54:                                               ; preds = %11
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %7, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = call i32 @xdr_bool(%struct.TYPE_13__* %56, i32* %7)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %3, align 4
  br label %139

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %53
  br label %137

63:                                               ; preds = %2
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = call i32 @xdr_bool(%struct.TYPE_13__* %64, i32* %7)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %3, align 4
  br label %139

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** @GSS_C_NO_CHANNEL_BINDINGS, align 8
  %74 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_12__* %73, %struct.TYPE_12__** %74, align 8
  br label %115

75:                                               ; preds = %69
  %76 = call %struct.TYPE_12__* @mem_alloc(i32 20)
  store %struct.TYPE_12__* %76, %struct.TYPE_12__** %6, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %78 = call i32 @memset(%struct.TYPE_12__* %77, i32 0, i32 20)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 4
  %82 = call i32 @xdr_uint32_t(%struct.TYPE_13__* %79, i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %108

84:                                               ; preds = %75
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  %88 = call i32 @xdr_gss_buffer_desc(%struct.TYPE_13__* %85, i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %84
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 3
  %94 = call i32 @xdr_uint32_t(%struct.TYPE_13__* %91, i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = call i32 @xdr_gss_buffer_desc(%struct.TYPE_13__* %97, i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = call i32 @xdr_gss_buffer_desc(%struct.TYPE_13__* %103, i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %102, %96, %90, %84, %75
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %110 = call i32 @mem_free(%struct.TYPE_12__* %109, i32 20)
  %111 = load i32, i32* @FALSE, align 4
  store i32 %111, i32* %3, align 4
  br label %139

112:                                              ; preds = %102
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %114 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_12__* %113, %struct.TYPE_12__** %114, align 8
  br label %115

115:                                              ; preds = %112, %72
  br label %137

116:                                              ; preds = %2
  %117 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  store %struct.TYPE_12__* %118, %struct.TYPE_12__** %6, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %120 = icmp ne %struct.TYPE_12__* %119, null
  br i1 %120, label %121, label %136

121:                                              ; preds = %116
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 2
  %125 = call i32 @xdr_gss_buffer_desc(%struct.TYPE_13__* %122, i32* %124)
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = call i32 @xdr_gss_buffer_desc(%struct.TYPE_13__* %126, i32* %128)
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = call i32 @xdr_gss_buffer_desc(%struct.TYPE_13__* %130, i32* %132)
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %135 = call i32 @mem_free(%struct.TYPE_12__* %134, i32 20)
  br label %136

136:                                              ; preds = %121, %116
  br label %137

137:                                              ; preds = %136, %2, %115, %62
  %138 = load i32, i32* @TRUE, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %137, %108, %67, %59, %51
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @xdr_bool(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @xdr_uint32_t(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @xdr_gss_buffer_desc(%struct.TYPE_13__*, i32*) #1

declare dso_local %struct.TYPE_12__* @mem_alloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @mem_free(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
