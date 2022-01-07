; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_output.c_ip6_clearpktopts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_output.c_ip6_clearpktopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_pktopts = type { i32, i32, i32*, %struct.TYPE_6__, %struct.TYPE_5__, i32*, i32*, i32*, %struct.TYPE_4__, i32* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@IPV6_PKTINFO = common dso_local global i32 0, align 4
@M_IP6OPT = common dso_local global i32 0, align 4
@IPV6_HOPLIMIT = common dso_local global i32 0, align 4
@IPV6_TCLASS = common dso_local global i32 0, align 4
@IPV6_NEXTHOP = common dso_local global i32 0, align 4
@IPV6_HOPOPTS = common dso_local global i32 0, align 4
@IPV6_RTHDRDSTOPTS = common dso_local global i32 0, align 4
@IPV6_RTHDR = common dso_local global i32 0, align 4
@IPV6_DSTOPTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip6_clearpktopts(%struct.ip6_pktopts* %0, i32 %1) #0 {
  %3 = alloca %struct.ip6_pktopts*, align 8
  %4 = alloca i32, align 4
  store %struct.ip6_pktopts* %0, %struct.ip6_pktopts** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %6 = icmp eq %struct.ip6_pktopts* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %187

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @IPV6_PKTINFO, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %11, %8
  %16 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %17 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %16, i32 0, i32 9
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %22 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %21, i32 0, i32 9
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @M_IP6OPT, align 4
  %25 = call i32 @free(i32* %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %15
  %27 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %28 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %27, i32 0, i32 9
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %26, %11
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @IPV6_HOPLIMIT, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %29
  %37 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %38 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %37, i32 0, i32 0
  store i32 -1, i32* %38, align 8
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @IPV6_TCLASS, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %39
  %47 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %48 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %47, i32 0, i32 1
  store i32 -1, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @IPV6_NEXTHOP, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %52, %49
  %57 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %58 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %57, i32 0, i32 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %64 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %63, i32 0, i32 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @RTFREE(i32* %66)
  %68 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %69 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %68, i32 0, i32 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %62, %56
  %72 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %73 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %72, i32 0, i32 7
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %78 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %77, i32 0, i32 7
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* @M_IP6OPT, align 4
  %81 = call i32 @free(i32* %79, i32 %80)
  br label %82

82:                                               ; preds = %76, %71
  %83 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %84 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %83, i32 0, i32 7
  store i32* null, i32** %84, align 8
  br label %85

85:                                               ; preds = %82, %52
  %86 = load i32, i32* %4, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @IPV6_HOPOPTS, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %88, %85
  %93 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %94 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %93, i32 0, i32 6
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %99 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %98, i32 0, i32 6
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* @M_IP6OPT, align 4
  %102 = call i32 @free(i32* %100, i32 %101)
  br label %103

103:                                              ; preds = %97, %92
  %104 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %105 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %104, i32 0, i32 6
  store i32* null, i32** %105, align 8
  br label %106

106:                                              ; preds = %103, %88
  %107 = load i32, i32* %4, align 4
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @IPV6_RTHDRDSTOPTS, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %109, %106
  %114 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %115 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %114, i32 0, i32 5
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %120 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %119, i32 0, i32 5
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* @M_IP6OPT, align 4
  %123 = call i32 @free(i32* %121, i32 %122)
  br label %124

124:                                              ; preds = %118, %113
  %125 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %126 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %125, i32 0, i32 5
  store i32* null, i32** %126, align 8
  br label %127

127:                                              ; preds = %124, %109
  %128 = load i32, i32* %4, align 4
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %134, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @IPV6_RTHDR, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %166

134:                                              ; preds = %130, %127
  %135 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %136 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %147

140:                                              ; preds = %134
  %141 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %142 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* @M_IP6OPT, align 4
  %146 = call i32 @free(i32* %144, i32 %145)
  br label %147

147:                                              ; preds = %140, %134
  %148 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %149 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  store i32* null, i32** %150, align 8
  %151 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %152 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %165

156:                                              ; preds = %147
  %157 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %158 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @RTFREE(i32* %160)
  %162 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %163 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  store i32* null, i32** %164, align 8
  br label %165

165:                                              ; preds = %156, %147
  br label %166

166:                                              ; preds = %165, %130
  %167 = load i32, i32* %4, align 4
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %173, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @IPV6_DSTOPTS, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %187

173:                                              ; preds = %169, %166
  %174 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %175 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %184

178:                                              ; preds = %173
  %179 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %180 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* @M_IP6OPT, align 4
  %183 = call i32 @free(i32* %181, i32 %182)
  br label %184

184:                                              ; preds = %178, %173
  %185 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %186 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %185, i32 0, i32 2
  store i32* null, i32** %186, align 8
  br label %187

187:                                              ; preds = %7, %184, %169
  ret void
}

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @RTFREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
