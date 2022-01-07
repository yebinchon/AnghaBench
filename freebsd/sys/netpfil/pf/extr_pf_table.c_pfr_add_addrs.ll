; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_add_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_add_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_table = type { i32 }
%struct.pfr_addr = type { i64, i8* }
%struct.pfr_ktable = type { i32 }
%struct.pfr_kentryworkq = type { i32 }
%struct.pfr_kentry = type { i64 }

@time_second = common dso_local global i64 0, align 8
@PFR_FLAG_DUMMY = common dso_local global i32 0, align 4
@PFR_FLAG_FEEDBACK = common dso_local global i32 0, align 4
@PFR_FLAG_USERIOCTL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PFR_TFLAG_ACTIVE = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@PFR_TFLAG_CONST = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@V_pfr_nulltable = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PFR_FB_DUPLICATE = common dso_local global i8* null, align 8
@PFR_FB_ADDED = common dso_local global i8* null, align 8
@PFR_FB_CONFLICT = common dso_local global i8* null, align 8
@PFR_FB_NONE = common dso_local global i8* null, align 8
@pfrke_workq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_add_addrs(%struct.pfr_table* %0, %struct.pfr_addr* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pfr_table*, align 8
  %8 = alloca %struct.pfr_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pfr_ktable*, align 8
  %13 = alloca %struct.pfr_ktable*, align 8
  %14 = alloca %struct.pfr_kentryworkq, align 4
  %15 = alloca %struct.pfr_kentry*, align 8
  %16 = alloca %struct.pfr_kentry*, align 8
  %17 = alloca %struct.pfr_addr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.pfr_table* %0, %struct.pfr_table** %7, align 8
  store %struct.pfr_addr* %1, %struct.pfr_addr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %20, align 4
  %22 = load i64, i64* @time_second, align 8
  store i64 %22, i64* %21, align 8
  %23 = call i32 (...) @PF_RULES_WASSERT()
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @PFR_FLAG_DUMMY, align 4
  %26 = load i32, i32* @PFR_FLAG_FEEDBACK, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @ACCEPT_FLAGS(i32 %24, i32 %27)
  %29 = load %struct.pfr_table*, %struct.pfr_table** %7, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @PFR_FLAG_USERIOCTL, align 4
  %32 = and i32 %30, %31
  %33 = call i64 @pfr_validate_table(%struct.pfr_table* %29, i32 0, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %6, align 4
  br label %200

37:                                               ; preds = %5
  %38 = load %struct.pfr_table*, %struct.pfr_table** %7, align 8
  %39 = call %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table* %38)
  store %struct.pfr_ktable* %39, %struct.pfr_ktable** %12, align 8
  %40 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %41 = icmp eq %struct.pfr_ktable* %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %44 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %42, %37
  %50 = load i32, i32* @ESRCH, align 4
  store i32 %50, i32* %6, align 4
  br label %200

51:                                               ; preds = %42
  %52 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %53 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PFR_TFLAG_CONST, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @EPERM, align 4
  store i32 %59, i32* %6, align 4
  br label %200

60:                                               ; preds = %51
  %61 = call %struct.pfr_ktable* @pfr_create_ktable(i32* @V_pfr_nulltable, i32 0, i32 0)
  store %struct.pfr_ktable* %61, %struct.pfr_ktable** %13, align 8
  %62 = load %struct.pfr_ktable*, %struct.pfr_ktable** %13, align 8
  %63 = icmp eq %struct.pfr_ktable* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @ENOMEM, align 4
  store i32 %65, i32* %6, align 4
  br label %200

66:                                               ; preds = %60
  %67 = call i32 @SLIST_INIT(%struct.pfr_kentryworkq* %14)
  store i32 0, i32* %18, align 4
  %68 = load %struct.pfr_addr*, %struct.pfr_addr** %8, align 8
  store %struct.pfr_addr* %68, %struct.pfr_addr** %17, align 8
  br label %69

69:                                               ; preds = %157, %66
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %162

73:                                               ; preds = %69
  %74 = load %struct.pfr_addr*, %struct.pfr_addr** %17, align 8
  %75 = call i64 @pfr_validate_addr(%struct.pfr_addr* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @EINVAL, align 4
  %79 = call i32 @senderr(i32 %78)
  br label %80

80:                                               ; preds = %77, %73
  %81 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %82 = load %struct.pfr_addr*, %struct.pfr_addr** %17, align 8
  %83 = call %struct.pfr_kentry* @pfr_lookup_addr(%struct.pfr_ktable* %81, %struct.pfr_addr* %82, i32 1)
  store %struct.pfr_kentry* %83, %struct.pfr_kentry** %15, align 8
  %84 = load %struct.pfr_ktable*, %struct.pfr_ktable** %13, align 8
  %85 = load %struct.pfr_addr*, %struct.pfr_addr** %17, align 8
  %86 = call %struct.pfr_kentry* @pfr_lookup_addr(%struct.pfr_ktable* %84, %struct.pfr_addr* %85, i32 1)
  store %struct.pfr_kentry* %86, %struct.pfr_kentry** %16, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @PFR_FLAG_FEEDBACK, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %124

91:                                               ; preds = %80
  %92 = load %struct.pfr_kentry*, %struct.pfr_kentry** %16, align 8
  %93 = icmp ne %struct.pfr_kentry* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i8*, i8** @PFR_FB_DUPLICATE, align 8
  %96 = load %struct.pfr_addr*, %struct.pfr_addr** %17, align 8
  %97 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  br label %123

98:                                               ; preds = %91
  %99 = load %struct.pfr_kentry*, %struct.pfr_kentry** %15, align 8
  %100 = icmp eq %struct.pfr_kentry* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i8*, i8** @PFR_FB_ADDED, align 8
  %103 = load %struct.pfr_addr*, %struct.pfr_addr** %17, align 8
  %104 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  br label %122

105:                                              ; preds = %98
  %106 = load %struct.pfr_kentry*, %struct.pfr_kentry** %15, align 8
  %107 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.pfr_addr*, %struct.pfr_addr** %17, align 8
  %110 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %108, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load i8*, i8** @PFR_FB_CONFLICT, align 8
  %115 = load %struct.pfr_addr*, %struct.pfr_addr** %17, align 8
  %116 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  br label %121

117:                                              ; preds = %105
  %118 = load i8*, i8** @PFR_FB_NONE, align 8
  %119 = load %struct.pfr_addr*, %struct.pfr_addr** %17, align 8
  %120 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %119, i32 0, i32 1
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %117, %113
  br label %122

122:                                              ; preds = %121, %101
  br label %123

123:                                              ; preds = %122, %94
  br label %124

124:                                              ; preds = %123, %80
  %125 = load %struct.pfr_kentry*, %struct.pfr_kentry** %15, align 8
  %126 = icmp eq %struct.pfr_kentry* %125, null
  br i1 %126, label %127, label %156

127:                                              ; preds = %124
  %128 = load %struct.pfr_kentry*, %struct.pfr_kentry** %16, align 8
  %129 = icmp eq %struct.pfr_kentry* %128, null
  br i1 %129, label %130, label %156

130:                                              ; preds = %127
  %131 = load %struct.pfr_addr*, %struct.pfr_addr** %17, align 8
  %132 = call %struct.pfr_kentry* @pfr_create_kentry(%struct.pfr_addr* %131)
  store %struct.pfr_kentry* %132, %struct.pfr_kentry** %15, align 8
  %133 = load %struct.pfr_kentry*, %struct.pfr_kentry** %15, align 8
  %134 = icmp eq %struct.pfr_kentry* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = call i32 @senderr(i32 %136)
  br label %138

138:                                              ; preds = %135, %130
  %139 = load %struct.pfr_ktable*, %struct.pfr_ktable** %13, align 8
  %140 = load %struct.pfr_kentry*, %struct.pfr_kentry** %15, align 8
  %141 = call i64 @pfr_route_kentry(%struct.pfr_ktable* %139, %struct.pfr_kentry* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = load %struct.pfr_kentry*, %struct.pfr_kentry** %15, align 8
  %145 = call i32 @pfr_destroy_kentry(%struct.pfr_kentry* %144)
  %146 = load i8*, i8** @PFR_FB_NONE, align 8
  %147 = load %struct.pfr_addr*, %struct.pfr_addr** %17, align 8
  %148 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %147, i32 0, i32 1
  store i8* %146, i8** %148, align 8
  br label %155

149:                                              ; preds = %138
  %150 = load %struct.pfr_kentry*, %struct.pfr_kentry** %15, align 8
  %151 = load i32, i32* @pfrke_workq, align 4
  %152 = call i32 @SLIST_INSERT_HEAD(%struct.pfr_kentryworkq* %14, %struct.pfr_kentry* %150, i32 %151)
  %153 = load i32, i32* %20, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %20, align 4
  br label %155

155:                                              ; preds = %149, %143
  br label %156

156:                                              ; preds = %155, %127, %124
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %18, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %18, align 4
  %160 = load %struct.pfr_addr*, %struct.pfr_addr** %17, align 8
  %161 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %160, i32 1
  store %struct.pfr_addr* %161, %struct.pfr_addr** %17, align 8
  br label %69

162:                                              ; preds = %69
  %163 = load %struct.pfr_ktable*, %struct.pfr_ktable** %13, align 8
  %164 = call i32 @pfr_clean_node_mask(%struct.pfr_ktable* %163, %struct.pfr_kentryworkq* %14)
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* @PFR_FLAG_DUMMY, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %162
  %170 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %171 = load i64, i64* %21, align 8
  %172 = call i32 @pfr_insert_kentries(%struct.pfr_ktable* %170, %struct.pfr_kentryworkq* %14, i64 %171)
  br label %175

173:                                              ; preds = %162
  %174 = call i32 @pfr_destroy_kentries(%struct.pfr_kentryworkq* %14)
  br label %175

175:                                              ; preds = %173, %169
  %176 = load i32*, i32** %10, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32, i32* %20, align 4
  %180 = load i32*, i32** %10, align 8
  store i32 %179, i32* %180, align 4
  br label %181

181:                                              ; preds = %178, %175
  %182 = load %struct.pfr_ktable*, %struct.pfr_ktable** %13, align 8
  %183 = call i32 @pfr_destroy_ktable(%struct.pfr_ktable* %182, i32 0)
  store i32 0, i32* %6, align 4
  br label %200

184:                                              ; No predecessors!
  %185 = load %struct.pfr_ktable*, %struct.pfr_ktable** %13, align 8
  %186 = call i32 @pfr_clean_node_mask(%struct.pfr_ktable* %185, %struct.pfr_kentryworkq* %14)
  %187 = call i32 @pfr_destroy_kentries(%struct.pfr_kentryworkq* %14)
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* @PFR_FLAG_FEEDBACK, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %184
  %193 = load %struct.pfr_addr*, %struct.pfr_addr** %8, align 8
  %194 = load i32, i32* %9, align 4
  %195 = call i32 @pfr_reset_feedback(%struct.pfr_addr* %193, i32 %194)
  br label %196

196:                                              ; preds = %192, %184
  %197 = load %struct.pfr_ktable*, %struct.pfr_ktable** %13, align 8
  %198 = call i32 @pfr_destroy_ktable(%struct.pfr_ktable* %197, i32 0)
  %199 = load i32, i32* %19, align 4
  store i32 %199, i32* %6, align 4
  br label %200

200:                                              ; preds = %196, %181, %64, %58, %49, %35
  %201 = load i32, i32* %6, align 4
  ret i32 %201
}

declare dso_local i32 @PF_RULES_WASSERT(...) #1

declare dso_local i32 @ACCEPT_FLAGS(i32, i32) #1

declare dso_local i64 @pfr_validate_table(%struct.pfr_table*, i32, i32) #1

declare dso_local %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table*) #1

declare dso_local %struct.pfr_ktable* @pfr_create_ktable(i32*, i32, i32) #1

declare dso_local i32 @SLIST_INIT(%struct.pfr_kentryworkq*) #1

declare dso_local i64 @pfr_validate_addr(%struct.pfr_addr*) #1

declare dso_local i32 @senderr(i32) #1

declare dso_local %struct.pfr_kentry* @pfr_lookup_addr(%struct.pfr_ktable*, %struct.pfr_addr*, i32) #1

declare dso_local %struct.pfr_kentry* @pfr_create_kentry(%struct.pfr_addr*) #1

declare dso_local i64 @pfr_route_kentry(%struct.pfr_ktable*, %struct.pfr_kentry*) #1

declare dso_local i32 @pfr_destroy_kentry(%struct.pfr_kentry*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(%struct.pfr_kentryworkq*, %struct.pfr_kentry*, i32) #1

declare dso_local i32 @pfr_clean_node_mask(%struct.pfr_ktable*, %struct.pfr_kentryworkq*) #1

declare dso_local i32 @pfr_insert_kentries(%struct.pfr_ktable*, %struct.pfr_kentryworkq*, i64) #1

declare dso_local i32 @pfr_destroy_kentries(%struct.pfr_kentryworkq*) #1

declare dso_local i32 @pfr_destroy_ktable(%struct.pfr_ktable*, i32) #1

declare dso_local i32 @pfr_reset_feedback(%struct.pfr_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
