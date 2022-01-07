; ModuleID = '/home/carl/AnghaBench/freebsd/sys/isa/extr_pnpparse.c_pnp_merge_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/isa/extr_pnpparse.c_pnp_merge_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isa_config = type { i32, i32, i32, i32, i32*, i32*, i32*, i32* }

@ISA_NMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"too many memory ranges\0A\00", align 1
@ISA_NPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"too many port ranges\0A\00", align 1
@ISA_NIRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"too many irq ranges\0A\00", align 1
@ISA_NDRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"too many drq ranges\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.isa_config*, %struct.isa_config*)* @pnp_merge_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnp_merge_resources(i32 %0, %struct.isa_config* %1, %struct.isa_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.isa_config*, align 8
  %6 = alloca %struct.isa_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.isa_config* %1, %struct.isa_config** %5, align 8
  store %struct.isa_config* %2, %struct.isa_config** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @device_get_parent(i32 %9)
  store i32 %10, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %46, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %14 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %11
  %18 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %19 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ISA_NMEM, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %166

26:                                               ; preds = %17
  %27 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %28 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %27, i32 0, i32 7
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %35 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %34, i32 0, i32 7
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %38 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  store i32 %33, i32* %41, align 4
  %42 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %43 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %26
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %11

49:                                               ; preds = %11
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %85, %49
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %53 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %88

56:                                               ; preds = %50
  %57 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %58 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ISA_NPORT, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %166

65:                                               ; preds = %56
  %66 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %67 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %66, i32 0, i32 6
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %74 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %73, i32 0, i32 6
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %77 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  store i32 %72, i32* %80, align 4
  %81 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %82 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %65
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %50

88:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %124, %88
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %92 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %127

95:                                               ; preds = %89
  %96 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %97 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @ISA_NIRQ, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @device_printf(i32 %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %166

104:                                              ; preds = %95
  %105 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %106 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %105, i32 0, i32 5
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %113 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %112, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %116 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %114, i64 %118
  store i32 %111, i32* %119, align 4
  %120 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %121 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %104
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %89

127:                                              ; preds = %89
  store i32 0, i32* %8, align 4
  br label %128

128:                                              ; preds = %163, %127
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %131 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %166

134:                                              ; preds = %128
  %135 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %136 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @ISA_NDRQ, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @device_printf(i32 %141, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %166

143:                                              ; preds = %134
  %144 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %145 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %144, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %152 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %151, i32 0, i32 4
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %155 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %153, i64 %157
  store i32 %150, i32* %158, align 4
  %159 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %160 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %143
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %8, align 4
  br label %128

166:                                              ; preds = %23, %62, %101, %140, %128
  ret void
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
