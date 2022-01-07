; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_glue.c_dn_c_copy_pipe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_glue.c_dn_c_copy_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_schk = type { %struct.TYPE_5__, %struct.dn_profile*, %struct.dn_fsk*, %struct.dn_link }
%struct.TYPE_5__ = type { i32, i32 }
%struct.dn_profile = type { i32, i32, i32 }
%struct.dn_fsk = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.dn_link = type { i32, i8*, i32, i32 }
%struct.copy_args = type { i32* }
%struct.dn_pipe7 = type { i32, i8*, i32, %struct.TYPE_4__, %struct.dn_flow_set }
%struct.TYPE_4__ = type { %struct.dn_pipe7* }
%struct.dn_flow_set = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.dn_pipe8 = type { i32, i32, i32, i32, %struct.dn_flow_set }

@is7 = common dso_local global i64 0, align 8
@DN_IS_PIPE = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@DN_MAX_ID = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dn_c_copy_pipe(%struct.dn_schk* %0, %struct.copy_args* %1, i32 %2) #0 {
  %4 = alloca %struct.dn_schk*, align 8
  %5 = alloca %struct.copy_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dn_link*, align 8
  %8 = alloca %struct.dn_fsk*, align 8
  %9 = alloca %struct.dn_pipe7*, align 8
  %10 = alloca %struct.dn_pipe8*, align 8
  %11 = alloca %struct.dn_flow_set*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dn_profile*, align 8
  store %struct.dn_schk* %0, %struct.dn_schk** %4, align 8
  store %struct.copy_args* %1, %struct.copy_args** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.dn_schk*, %struct.dn_schk** %4, align 8
  %15 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %14, i32 0, i32 3
  store %struct.dn_link* %15, %struct.dn_link** %7, align 8
  %16 = load %struct.dn_schk*, %struct.dn_schk** %4, align 8
  %17 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %16, i32 0, i32 2
  %18 = load %struct.dn_fsk*, %struct.dn_fsk** %17, align 8
  store %struct.dn_fsk* %18, %struct.dn_fsk** %8, align 8
  %19 = load %struct.copy_args*, %struct.copy_args** %5, align 8
  %20 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to %struct.dn_pipe7*
  store %struct.dn_pipe7* %24, %struct.dn_pipe7** %9, align 8
  %25 = load %struct.copy_args*, %struct.copy_args** %5, align 8
  %26 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to %struct.dn_pipe8*
  store %struct.dn_pipe8* %30, %struct.dn_pipe8** %10, align 8
  store i32 0, i32* %12, align 4
  %31 = load i64, i64* @is7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load %struct.dn_pipe7*, %struct.dn_pipe7** %9, align 8
  %35 = getelementptr inbounds %struct.dn_pipe7, %struct.dn_pipe7* %34, i32 0, i32 4
  store %struct.dn_flow_set* %35, %struct.dn_flow_set** %11, align 8
  store i32 88, i32* %12, align 4
  br label %39

36:                                               ; preds = %3
  %37 = load %struct.dn_pipe8*, %struct.dn_pipe8** %10, align 8
  %38 = getelementptr inbounds %struct.dn_pipe8, %struct.dn_pipe8* %37, i32 0, i32 4
  store %struct.dn_flow_set* %38, %struct.dn_flow_set** %11, align 8
  store i32 72, i32* %12, align 4
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i64, i64* @DN_IS_PIPE, align 8
  %41 = inttoptr i64 %40 to %struct.dn_pipe7*
  %42 = load %struct.dn_pipe7*, %struct.dn_pipe7** %9, align 8
  %43 = getelementptr inbounds %struct.dn_pipe7, %struct.dn_pipe7* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store %struct.dn_pipe7* %41, %struct.dn_pipe7** %44, align 8
  %45 = load %struct.dn_link*, %struct.dn_link** %7, align 8
  %46 = getelementptr inbounds %struct.dn_link, %struct.dn_link* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dn_pipe7*, %struct.dn_pipe7** %9, align 8
  %49 = getelementptr inbounds %struct.dn_pipe7, %struct.dn_pipe7* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.dn_link*, %struct.dn_link** %7, align 8
  %51 = getelementptr inbounds %struct.dn_link, %struct.dn_link* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %52, 1000
  %54 = load i32, i32* @hz, align 4
  %55 = sdiv i32 %53, %54
  %56 = load %struct.dn_pipe7*, %struct.dn_pipe7** %9, align 8
  %57 = getelementptr inbounds %struct.dn_pipe7, %struct.dn_pipe7* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.dn_link*, %struct.dn_link** %7, align 8
  %59 = getelementptr inbounds %struct.dn_link, %struct.dn_link* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** @DN_MAX_ID, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = inttoptr i64 %64 to i8*
  %66 = load %struct.dn_pipe7*, %struct.dn_pipe7** %9, align 8
  %67 = getelementptr inbounds %struct.dn_pipe7, %struct.dn_pipe7* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load i64, i64* @is7, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %105, label %70

70:                                               ; preds = %39
  %71 = load %struct.dn_schk*, %struct.dn_schk** %4, align 8
  %72 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %71, i32 0, i32 1
  %73 = load %struct.dn_profile*, %struct.dn_profile** %72, align 8
  %74 = icmp ne %struct.dn_profile* %73, null
  br i1 %74, label %75, label %96

75:                                               ; preds = %70
  %76 = load %struct.dn_schk*, %struct.dn_schk** %4, align 8
  %77 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %76, i32 0, i32 1
  %78 = load %struct.dn_profile*, %struct.dn_profile** %77, align 8
  store %struct.dn_profile* %78, %struct.dn_profile** %13, align 8
  %79 = load %struct.dn_pipe8*, %struct.dn_pipe8** %10, align 8
  %80 = getelementptr inbounds %struct.dn_pipe8, %struct.dn_pipe8* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.dn_profile*, %struct.dn_profile** %13, align 8
  %83 = getelementptr inbounds %struct.dn_profile, %struct.dn_profile* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @strncpy(i32 %81, i32 %84, i32 4)
  %86 = load %struct.dn_profile*, %struct.dn_profile** %13, align 8
  %87 = getelementptr inbounds %struct.dn_profile, %struct.dn_profile* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.dn_pipe8*, %struct.dn_pipe8** %10, align 8
  %90 = getelementptr inbounds %struct.dn_pipe8, %struct.dn_pipe8* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.dn_profile*, %struct.dn_profile** %13, align 8
  %92 = getelementptr inbounds %struct.dn_profile, %struct.dn_profile* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.dn_pipe8*, %struct.dn_pipe8** %10, align 8
  %95 = getelementptr inbounds %struct.dn_pipe8, %struct.dn_pipe8* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %75, %70
  %97 = load %struct.dn_link*, %struct.dn_link** %7, align 8
  %98 = getelementptr inbounds %struct.dn_link, %struct.dn_link* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @hz, align 4
  %101 = mul nsw i32 8, %100
  %102 = call i32 @div64(i32 %99, i32 %101)
  %103 = load %struct.dn_pipe8*, %struct.dn_pipe8** %10, align 8
  %104 = getelementptr inbounds %struct.dn_pipe8, %struct.dn_pipe8* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %96, %39
  %106 = load %struct.dn_schk*, %struct.dn_schk** %4, align 8
  %107 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.dn_flow_set*, %struct.dn_flow_set** %11, align 8
  %111 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %110, i32 0, i32 10
  store i32 %109, i32* %111, align 8
  %112 = load %struct.dn_schk*, %struct.dn_schk** %4, align 8
  %113 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %105
  %118 = load %struct.dn_schk*, %struct.dn_schk** %4, align 8
  %119 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  br label %123

122:                                              ; preds = %105
  br label %123

123:                                              ; preds = %122, %117
  %124 = phi i32 [ %121, %117 ], [ 1, %122 ]
  %125 = load %struct.dn_flow_set*, %struct.dn_flow_set** %11, align 8
  %126 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.dn_link*, %struct.dn_link** %7, align 8
  %128 = getelementptr inbounds %struct.dn_link, %struct.dn_link* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = load i8*, i8** @DN_MAX_ID, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = inttoptr i64 %133 to i8*
  %135 = load %struct.dn_flow_set*, %struct.dn_flow_set** %11, align 8
  %136 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %135, i32 0, i32 9
  store i8* %134, i8** %136, align 8
  %137 = load %struct.dn_fsk*, %struct.dn_fsk** %8, align 8
  %138 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.dn_flow_set*, %struct.dn_flow_set** %11, align 8
  %142 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %141, i32 0, i32 8
  store i32 %140, i32* %142, align 8
  %143 = load %struct.dn_fsk*, %struct.dn_fsk** %8, align 8
  %144 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.dn_flow_set*, %struct.dn_flow_set** %11, align 8
  %148 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %147, i32 0, i32 7
  store i32 %146, i32* %148, align 4
  %149 = load %struct.dn_fsk*, %struct.dn_fsk** %8, align 8
  %150 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.dn_flow_set*, %struct.dn_flow_set** %11, align 8
  %154 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %153, i32 0, i32 6
  store i32 %152, i32* %154, align 8
  %155 = load %struct.dn_fsk*, %struct.dn_fsk** %8, align 8
  %156 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.dn_flow_set*, %struct.dn_flow_set** %11, align 8
  %159 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %158, i32 0, i32 5
  store i32 %157, i32* %159, align 4
  %160 = load %struct.dn_fsk*, %struct.dn_fsk** %8, align 8
  %161 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.dn_flow_set*, %struct.dn_flow_set** %11, align 8
  %164 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %163, i32 0, i32 4
  store i32 %162, i32* %164, align 8
  %165 = load %struct.dn_fsk*, %struct.dn_fsk** %8, align 8
  %166 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.dn_flow_set*, %struct.dn_flow_set** %11, align 8
  %170 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* %6, align 4
  %172 = load %struct.dn_flow_set*, %struct.dn_flow_set** %11, align 8
  %173 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load %struct.dn_fsk*, %struct.dn_fsk** %8, align 8
  %175 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @convertflags2old(i32 %177)
  %179 = load %struct.dn_flow_set*, %struct.dn_flow_set** %11, align 8
  %180 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  %181 = load i32, i32* %12, align 4
  %182 = load %struct.copy_args*, %struct.copy_args** %5, align 8
  %183 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, %181
  store i32 %186, i32* %184, align 4
  ret i32 0
}

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @div64(i32, i32) #1

declare dso_local i32 @convertflags2old(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
