; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_sysctl.c_bnxt_init_sysctl_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_sysctl.c_bnxt_init_sysctl_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, i8*, i32, i32, i8*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i8* }
%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_3__ = type { i32, i8* }
%struct.sysctl_ctx_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"hwstats\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"hardware statistics\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ver\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"hardware/firmware version information\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"nvram\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"nvram information\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"hw_lro\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"hardware lro\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"fc\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"flow ctrl\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_init_sysctl_ctx(%struct.bnxt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt_softc*, align 8
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %3, align 8
  %5 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %6 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %5, i32 0, i32 7
  %7 = call i32 @sysctl_ctx_init(i32* %6)
  %8 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %9 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %10)
  store %struct.sysctl_ctx_list* %11, %struct.sysctl_ctx_list** %4, align 8
  %12 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %13 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %14 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @device_get_sysctl_tree(i32 %15)
  %17 = call i32 @SYSCTL_CHILDREN(i32 %16)
  %18 = load i32, i32* @OID_AUTO, align 4
  %19 = load i32, i32* @CTLFLAG_RD, align 4
  %20 = call i8* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %12, i32 %17, i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %19, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %22 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %21, i32 0, i32 8
  store i8* %20, i8** %22, align 8
  %23 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %24 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %23, i32 0, i32 8
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %29 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %28, i32 0, i32 7
  %30 = call i32 @sysctl_ctx_free(i32* %29)
  %31 = load i32, i32* @ENOMEM, align 4
  store i32 %31, i32* %2, align 4
  br label %166

32:                                               ; preds = %1
  %33 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %34 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %33, i32 0, i32 6
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @sysctl_ctx_init(i32* %36)
  %38 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %39 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %40)
  store %struct.sysctl_ctx_list* %41, %struct.sysctl_ctx_list** %4, align 8
  %42 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %43 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %44 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @device_get_sysctl_tree(i32 %45)
  %47 = call i32 @SYSCTL_CHILDREN(i32 %46)
  %48 = load i32, i32* @OID_AUTO, align 4
  %49 = load i32, i32* @CTLFLAG_RD, align 4
  %50 = call i8* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %42, i32 %47, i32 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %51 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %52 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %51, i32 0, i32 6
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i8* %50, i8** %54, align 8
  %55 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %56 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %55, i32 0, i32 6
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %32
  %62 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %63 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %62, i32 0, i32 6
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = call i32 @sysctl_ctx_free(i32* %65)
  %67 = load i32, i32* @ENOMEM, align 4
  store i32 %67, i32* %2, align 4
  br label %166

68:                                               ; preds = %32
  %69 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %70 = call i64 @BNXT_PF(%struct.bnxt_softc* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %109

72:                                               ; preds = %68
  %73 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %74 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %73, i32 0, i32 5
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = call i32 @sysctl_ctx_init(i32* %76)
  %78 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %79 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %80)
  store %struct.sysctl_ctx_list* %81, %struct.sysctl_ctx_list** %4, align 8
  %82 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %83 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %84 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @device_get_sysctl_tree(i32 %85)
  %87 = call i32 @SYSCTL_CHILDREN(i32 %86)
  %88 = load i32, i32* @OID_AUTO, align 4
  %89 = load i32, i32* @CTLFLAG_RD, align 4
  %90 = call i8* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %82, i32 %87, i32 %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %89, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %91 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %92 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %91, i32 0, i32 5
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  store i8* %90, i8** %94, align 8
  %95 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %96 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %95, i32 0, i32 5
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %108, label %101

101:                                              ; preds = %72
  %102 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %103 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %102, i32 0, i32 5
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = call i32 @sysctl_ctx_free(i32* %105)
  %107 = load i32, i32* @ENOMEM, align 4
  store i32 %107, i32* %2, align 4
  br label %166

108:                                              ; preds = %72
  br label %109

109:                                              ; preds = %108, %68
  %110 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %111 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %110, i32 0, i32 3
  %112 = call i32 @sysctl_ctx_init(i32* %111)
  %113 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %114 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %115)
  store %struct.sysctl_ctx_list* %116, %struct.sysctl_ctx_list** %4, align 8
  %117 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %118 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %119 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @device_get_sysctl_tree(i32 %120)
  %122 = call i32 @SYSCTL_CHILDREN(i32 %121)
  %123 = load i32, i32* @OID_AUTO, align 4
  %124 = load i32, i32* @CTLFLAG_RD, align 4
  %125 = call i8* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %117, i32 %122, i32 %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %124, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %126 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %127 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %126, i32 0, i32 4
  store i8* %125, i8** %127, align 8
  %128 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %129 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %128, i32 0, i32 4
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %137, label %132

132:                                              ; preds = %109
  %133 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %134 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %133, i32 0, i32 3
  %135 = call i32 @sysctl_ctx_free(i32* %134)
  %136 = load i32, i32* @ENOMEM, align 4
  store i32 %136, i32* %2, align 4
  br label %166

137:                                              ; preds = %109
  %138 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %139 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %138, i32 0, i32 0
  %140 = call i32 @sysctl_ctx_init(i32* %139)
  %141 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %142 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %143)
  store %struct.sysctl_ctx_list* %144, %struct.sysctl_ctx_list** %4, align 8
  %145 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %146 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %147 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @device_get_sysctl_tree(i32 %148)
  %150 = call i32 @SYSCTL_CHILDREN(i32 %149)
  %151 = load i32, i32* @OID_AUTO, align 4
  %152 = load i32, i32* @CTLFLAG_RD, align 4
  %153 = call i8* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %145, i32 %150, i32 %151, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %152, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %154 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %155 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  %156 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %157 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %165, label %160

160:                                              ; preds = %137
  %161 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %162 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %161, i32 0, i32 0
  %163 = call i32 @sysctl_ctx_free(i32* %162)
  %164 = load i32, i32* @ENOMEM, align 4
  store i32 %164, i32* %2, align 4
  br label %166

165:                                              ; preds = %137
  store i32 0, i32* %2, align 4
  br label %166

166:                                              ; preds = %165, %160, %132, %101, %61, %27
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @sysctl_ctx_init(i32*) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local i8* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @sysctl_ctx_free(i32*) #1

declare dso_local i64 @BNXT_PF(%struct.bnxt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
