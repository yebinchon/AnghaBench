; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_dump_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_dump_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node_table = type { i32 }
%struct.ieee80211_node = type { i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"0x%p: mac %s refcnt %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"\09authmode %u flags 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"\09associd 0x%x txpower %u vlan %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"\09txseq %u rxseq %u fragno %u rxfragstamp %u\0A\00", align 1
@IEEE80211_NONQOS_TID = common dso_local global i64 0, align 8
@IEEE80211_SEQ_SEQ_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_SEQ_FRAG_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"\09rssi %d noise %d intval %u capinfo 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"\09bssid %s essid \22%.*s\22 channel %u:0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"\09inact %u inact_reload %u txrate %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"\09htcap %x htparam %x htctlchan %u ht2ndchan %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"\09htopmode %x htstbc %x htchw %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"\09vhtcap %x freq1 %d freq2 %d vhtbasicmcs %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_dump_node(%struct.ieee80211_node_table* %0, %struct.ieee80211_node* %1) #0 {
  %3 = alloca %struct.ieee80211_node_table*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  store %struct.ieee80211_node_table* %0, %struct.ieee80211_node_table** %3, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %4, align 8
  %5 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %6 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %7 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %6, i32 0, i32 29
  %8 = load i32, i32* %7, align 4
  %9 = call i8* @ether_sprintf(i32 %8)
  %10 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %11 = call i32 @ieee80211_node_refcnt(%struct.ieee80211_node* %10)
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.ieee80211_node* %5, i8* %9, i32 %11)
  %13 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32 %25, i32 %28)
  %30 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @IEEE80211_NONQOS_TID, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %36, i32 0, i32 6
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @IEEE80211_NONQOS_TID, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IEEE80211_SEQ_SEQ_SHIFT, align 4
  %43 = ashr i32 %41, %42
  %44 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %44, i32 0, i32 6
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @IEEE80211_NONQOS_TID, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IEEE80211_SEQ_FRAG_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %53 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %35, i32 %43, i32 %51, i32 %54)
  %56 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %57 = call i32 @node_getrssi(%struct.ieee80211_node* %56)
  %58 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %59 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %62 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %65 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %57, i32 %60, i32 %63, i32 %66)
  %68 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %69 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %68, i32 0, i32 28
  %70 = load i32, i32* %69, align 8
  %71 = call i8* @ether_sprintf(i32 %70)
  %72 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %73 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %72, i32 0, i32 11
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %76 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %75, i32 0, i32 12
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %79 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %78, i32 0, i32 27
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %84 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %83, i32 0, i32 27
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* %71, i8* %74, i32 %77, i32 %82, i32 %87)
  %89 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %90 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %89, i32 0, i32 13
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %93 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %92, i32 0, i32 14
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %96 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %95, i32 0, i32 15
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %91, i32 %94, i32 %97)
  %99 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %100 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %99, i32 0, i32 16
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %103 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %102, i32 0, i32 17
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %106 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %105, i32 0, i32 18
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %109 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %108, i32 0, i32 19
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %101, i32 %104, i32 %107, i32 %110)
  %112 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %113 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %112, i32 0, i32 20
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %116 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %115, i32 0, i32 21
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %119 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %118, i32 0, i32 22
  %120 = load i32, i32* %119, align 8
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %114, i32 %117, i32 %120)
  %122 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %123 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %122, i32 0, i32 23
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %126 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %125, i32 0, i32 26
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %130 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %129, i32 0, i32 25
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %134 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %133, i32 0, i32 24
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 %124, i32 %128, i32 %132, i32 %136)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ether_sprintf(i32) #1

declare dso_local i32 @ieee80211_node_refcnt(%struct.ieee80211_node*) #1

declare dso_local i32 @node_getrssi(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
