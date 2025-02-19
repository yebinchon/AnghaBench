; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ioctl.c_pf_hash_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ioctl.c_pf_hash_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.pf_rule = type { i32, i32 }

@label = common dso_local global i32 0, align 4
@ifname = common dso_local global i32 0, align 4
@match_tagname = common dso_local global i32 0, align 4
@match_tag = common dso_local global i32 0, align 4
@os_fingerprint = common dso_local global i32 0, align 4
@prob = common dso_local global i32 0, align 4
@uid = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@gid = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@rule_flag = common dso_local global i32 0, align 4
@action = common dso_local global i32 0, align 4
@direction = common dso_local global i32 0, align 4
@af = common dso_local global i32 0, align 4
@quick = common dso_local global i32 0, align 4
@ifnot = common dso_local global i32 0, align 4
@match_tag_not = common dso_local global i32 0, align 4
@natpass = common dso_local global i32 0, align 4
@keep_state = common dso_local global i32 0, align 4
@proto = common dso_local global i32 0, align 4
@type = common dso_local global i32 0, align 4
@code = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@flagset = common dso_local global i32 0, align 4
@allow_opts = common dso_local global i32 0, align 4
@rt = common dso_local global i32 0, align 4
@tos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.pf_rule*)* @pf_hash_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_hash_rule(i32* %0, %struct.pf_rule* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.pf_rule*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.pf_rule* %1, %struct.pf_rule** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %9 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %8, i32 0, i32 1
  %10 = call i32 @pf_hash_rule_addr(i32* %7, i32* %9)
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %13 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %12, i32 0, i32 0
  %14 = call i32 @pf_hash_rule_addr(i32* %11, i32* %13)
  %15 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %16 = load i32, i32* @label, align 4
  %17 = call i32 @PF_MD5_UPD_STR(%struct.pf_rule* %15, i32 %16)
  %18 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %19 = load i32, i32* @ifname, align 4
  %20 = call i32 @PF_MD5_UPD_STR(%struct.pf_rule* %18, i32 %19)
  %21 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %22 = load i32, i32* @match_tagname, align 4
  %23 = call i32 @PF_MD5_UPD_STR(%struct.pf_rule* %21, i32 %22)
  %24 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %25 = load i32, i32* @match_tag, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @PF_MD5_UPD_HTONS(%struct.pf_rule* %24, i32 %25, i32 %26)
  %28 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %29 = load i32, i32* @os_fingerprint, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @PF_MD5_UPD_HTONL(%struct.pf_rule* %28, i32 %29, i32 %30)
  %32 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %33 = load i32, i32* @prob, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @PF_MD5_UPD_HTONL(%struct.pf_rule* %32, i32 %33, i32 %34)
  %36 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uid, i32 0, i32 1), align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @PF_MD5_UPD_HTONL(%struct.pf_rule* %36, i32 %39, i32 %40)
  %42 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uid, i32 0, i32 1), align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @PF_MD5_UPD_HTONL(%struct.pf_rule* %42, i32 %45, i32 %46)
  %48 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uid, i32 0, i32 0), align 8
  %50 = call i32 @PF_MD5_UPD(%struct.pf_rule* %48, i32 %49)
  %51 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %52 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gid, i32 0, i32 1), align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @PF_MD5_UPD_HTONL(%struct.pf_rule* %51, i32 %54, i32 %55)
  %57 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %58 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gid, i32 0, i32 1), align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @PF_MD5_UPD_HTONL(%struct.pf_rule* %57, i32 %60, i32 %61)
  %63 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gid, i32 0, i32 0), align 8
  %65 = call i32 @PF_MD5_UPD(%struct.pf_rule* %63, i32 %64)
  %66 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %67 = load i32, i32* @rule_flag, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @PF_MD5_UPD_HTONL(%struct.pf_rule* %66, i32 %67, i32 %68)
  %70 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %71 = load i32, i32* @action, align 4
  %72 = call i32 @PF_MD5_UPD(%struct.pf_rule* %70, i32 %71)
  %73 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %74 = load i32, i32* @direction, align 4
  %75 = call i32 @PF_MD5_UPD(%struct.pf_rule* %73, i32 %74)
  %76 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %77 = load i32, i32* @af, align 4
  %78 = call i32 @PF_MD5_UPD(%struct.pf_rule* %76, i32 %77)
  %79 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %80 = load i32, i32* @quick, align 4
  %81 = call i32 @PF_MD5_UPD(%struct.pf_rule* %79, i32 %80)
  %82 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %83 = load i32, i32* @ifnot, align 4
  %84 = call i32 @PF_MD5_UPD(%struct.pf_rule* %82, i32 %83)
  %85 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %86 = load i32, i32* @match_tag_not, align 4
  %87 = call i32 @PF_MD5_UPD(%struct.pf_rule* %85, i32 %86)
  %88 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %89 = load i32, i32* @natpass, align 4
  %90 = call i32 @PF_MD5_UPD(%struct.pf_rule* %88, i32 %89)
  %91 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %92 = load i32, i32* @keep_state, align 4
  %93 = call i32 @PF_MD5_UPD(%struct.pf_rule* %91, i32 %92)
  %94 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %95 = load i32, i32* @proto, align 4
  %96 = call i32 @PF_MD5_UPD(%struct.pf_rule* %94, i32 %95)
  %97 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %98 = load i32, i32* @type, align 4
  %99 = call i32 @PF_MD5_UPD(%struct.pf_rule* %97, i32 %98)
  %100 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %101 = load i32, i32* @code, align 4
  %102 = call i32 @PF_MD5_UPD(%struct.pf_rule* %100, i32 %101)
  %103 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %104 = load i32, i32* @flags, align 4
  %105 = call i32 @PF_MD5_UPD(%struct.pf_rule* %103, i32 %104)
  %106 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %107 = load i32, i32* @flagset, align 4
  %108 = call i32 @PF_MD5_UPD(%struct.pf_rule* %106, i32 %107)
  %109 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %110 = load i32, i32* @allow_opts, align 4
  %111 = call i32 @PF_MD5_UPD(%struct.pf_rule* %109, i32 %110)
  %112 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %113 = load i32, i32* @rt, align 4
  %114 = call i32 @PF_MD5_UPD(%struct.pf_rule* %112, i32 %113)
  %115 = load %struct.pf_rule*, %struct.pf_rule** %4, align 8
  %116 = load i32, i32* @tos, align 4
  %117 = call i32 @PF_MD5_UPD(%struct.pf_rule* %115, i32 %116)
  ret void
}

declare dso_local i32 @pf_hash_rule_addr(i32*, i32*) #1

declare dso_local i32 @PF_MD5_UPD_STR(%struct.pf_rule*, i32) #1

declare dso_local i32 @PF_MD5_UPD_HTONS(%struct.pf_rule*, i32, i32) #1

declare dso_local i32 @PF_MD5_UPD_HTONL(%struct.pf_rule*, i32, i32) #1

declare dso_local i32 @PF_MD5_UPD(%struct.pf_rule*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
